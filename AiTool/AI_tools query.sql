-- Dimension Table: Users
CREATE TABLE dim_user (
    user_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender VARCHAR(50),
    profession VARCHAR(255)
);

-- Dimension Table: AI Tools
CREATE TABLE dim_tool (
    tool_id INT PRIMARY KEY,
    tool_name VARCHAR(255),
    preferred_platform VARCHAR(255)
);
-- Dimension Table: Device Type
CREATE TABLE dim_device (
    device_id INT PRIMARY KEY,
    device_type VARCHAR(255)
);

-- Updated Dimension Table: Usage Details (Now linked to Device Type)
CREATE TABLE dim_usage (
    usage_id INT PRIMARY KEY,
    purpose VARCHAR(255),
    frequency VARCHAR(50),
    device_id INT,
    learning_priority VARCHAR(50),
    challenges_faced VARCHAR(255),
    proficiency VARCHAR(50),
    FOREIGN KEY (device_id) REFERENCES dim_device(device_id)
);

-- Fact Table: AI Usage
CREATE TABLE fact_ai_usage (
    usage_fact_id INT PRIMARY KEY ,
    user_id INT,
    tool_id INT,
    device_id INT,
    usage_id INT,
    time_spent INT,
    FOREIGN KEY (user_id) REFERENCES dim_user(user_id),
    FOREIGN KEY (tool_id) REFERENCES dim_tool(tool_id),
    FOREIGN KEY (device_id) REFERENCES dim_device(device_id),
    FOREIGN KEY (usage_id) REFERENCES dim_usage(usage_id)
);

-- Fact Table: User Learning Statistics
CREATE TABLE fact_learning_statistics (
    stats_id INT PRIMARY KEY ,
    user_id INT,
    tool_id INT,
    device_id INT,
    usage_id INT,
    avg_age DECIMAL(5,2),
    total_time_spent INT,
    sessions_count INT,
	FOREIGN KEY (user_id) REFERENCES dim_user(user_id),
    FOREIGN KEY (tool_id) REFERENCES dim_tool(tool_id),
    FOREIGN KEY (device_id) REFERENCES dim_device(device_id),
    FOREIGN KEY (usage_id) REFERENCES dim_usage(usage_id)
);
INSERT INTO dim_user (user_id, name, age, gender, profession) VALUES
(1, 'Alice', 25, 'Female', 'Data Scientist'),
(2, 'Bob', 30, 'Male', 'Software Engineer'),
(3, 'Charlie', 35, 'Male', 'AI Researcher'),
(4, 'David', 28, 'Male', 'Data Analyst'),
(5, 'Eve', 32, 'Female', 'Machine Learning Engineer');
INSERT INTO dim_tool (tool_id, tool_name, preferred_platform) VALUES
(1, 'TensorFlow', 'Python'),
(2, 'PyTorch', 'Python'),
(3, 'Scikit-Learn', 'Python'),
(4, 'Keras', 'Python'),
(5, 'OpenCV', 'C++');
INSERT INTO dim_device (device_id, device_type) VALUES
(1, 'Laptop'),
(2, 'Desktop'),
(3, 'Tablet'),
(4, 'Smartphone'),
(5, 'Cloud VM');
INSERT INTO dim_usage (usage_id, purpose, frequency, device_id, learning_priority, challenges_faced, proficiency) VALUES
(1, 'Research', 'Daily', 1, 'High', 'Lack of resources', 'Expert'),
(2, 'Development', 'Weekly', 2, 'Medium', 'Time constraints', 'Intermediate'),
(3, 'Education', 'Monthly', 3, 'High', 'Steep learning curve', 'Beginner'),
(4, 'Experimentation', 'Occasionally', 4, 'Low', 'Limited computing power', 'Intermediate'),
(5, 'Industry Projects', 'Daily', 5, 'High', 'Cost of tools', 'Expert');
INSERT INTO fact_ai_usage (usage_fact_id, user_id, tool_id, device_id, usage_id, time_spent) VALUES
(1, 1, 1, 1, 1, 120),
(2, 2, 2, 2, 2, 90),
(3, 3, 3, 3, 3, 60),
(4, 4, 4, 4, 4, 150),
(5, 5, 5, 5, 5, 180);
INSERT INTO fact_learning_statistics (stats_id, user_id, tool_id, device_id, usage_id, avg_age, total_time_spent, sessions_count) VALUES
(1, 1, 1, 1, 1, 29.6, 500, 10),
(2, 2, 2, 2, 2, 31.2, 400, 8),
(3, 3, 3, 3, 3, 28.4, 350, 7),
(4, 4, 4, 4, 4, 30.1, 450, 9),
(5, 5, 5, 5, 5, 32.8, 600, 12);



