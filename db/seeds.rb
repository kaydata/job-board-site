# Ensure a user exists to associate jobs with
user = User.find_or_create_by!(email: 'user@example.com') do |user|
    user.password = 'password'
    user.password_confirmation = 'password'
  end
  
  # Create 5 job posts
  jobs = [
    { title: 'Frontend Developer', description: 'Develop and maintain the frontend of our web applications.', company: 'TechCorp', location: 'New York, NY', company_website: 'https://techcorp.com/careers', user: user },
    { title: 'Backend Developer', description: 'Design and implement backend services and APIs.', company: 'Innovatech', location: 'San Francisco, CA', company_website: 'https://innovatech.com/jobs', user: user },
    { title: 'Data Scientist', description: 'Analyze and interpret complex data sets.', company: 'DataSolutions', location: 'Chicago, IL', company_website: 'https://datasolutions.com/careers', user: user },
    { title: 'Project Manager', description: 'Lead project teams to deliver successful projects.', company: 'ManageIT', location: 'Boston, MA', company_website: 'https://manageit.com/jobs', user: user },
    { title: 'UX/UI Designer', description: 'Create user-centered designs for our web and mobile apps.', company: 'DesignHub', location: 'Austin, TX', company_website: 'https://designhub.com/careers', user: user }
  ]
  
  jobs.each do |job_attributes|
    Job.create!(job_attributes)
  end
  