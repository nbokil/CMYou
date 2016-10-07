json.extract! student, :id, :first_name, :last_name, :gender, :dorm, :class_year, :user_id, :active, :created_at, :updated_at
json.url student_url(student, format: :json)