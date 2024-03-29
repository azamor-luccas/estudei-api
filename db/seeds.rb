# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db_populate:create_subjects'].invoke
Doorkeeper::Application.create(name: "estudei-api", confidential: false, redirect_uri: "urn:ietf:wg:oauth:2.0:oob", scopes: ["read", "write"])
course = Course.create(name: "ENEM")
student = Student.create(name: "Dev Estudei", email: "devestudei@gmail.com", password: "1234", status: "UNBLOCKED")
CourseStudent.create(course_id: course.id, student_id: student.id)

#if Rails.env.development?
#end