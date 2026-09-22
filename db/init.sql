-- Create the education table
CREATE TABLE IF NOT EXISTS education (
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    session VARCHAR(50) NOT NULL,
    cgpa VARCHAR(10) NOT NULL,
    institute VARCHAR(255) NOT NULL
);

-- Insert initial sample data
INSERT INTO education (course_name, session, cgpa, institute) VALUES
('B.Tech Computer Science', '2020-2024', '3.8', 'Islamic University of Science and Technology'),
('AI & Cloud DevOps Track', '2024-2025', '4.0', 'Docker & Cloud Academy'),
('MLOPS', '2024-2025', '5.0', 'Verventech'),
('Full Stack Web Development', '2023-2024', '3.9', 'Tech Institute');