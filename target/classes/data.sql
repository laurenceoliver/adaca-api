INSERT INTO project (project_name) VALUES ('Project A');
INSERT INTO project (project_name) VALUES ('Project B');

INSERT INTO developer (developer_name, email) VALUES ('Alice Johnson', 'alice.johnson@example.com');
INSERT INTO developer (developer_name, email) VALUES ('Ben Martinez', 'ben.martinez@example.com');
INSERT INTO developer (developer_name, email) VALUES ('Clara Nguyen', 'clara.nguyen@example.com');
INSERT INTO developer (developer_name, email) VALUES ('David Chen', 'david.chen@example.com');
INSERT INTO developer (developer_name, email) VALUES ('Emma Patel', 'emma.patel@example.com');

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement login API #1', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Create dashboard UI #2', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Set up CI/CD pipeline #3', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Database schema design #4', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Email notification module #5', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Search feature backend #6', 2, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement calendar view #7', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Testing user flows #8', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Optimize DB queries #9', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Write API documentation #10', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement login API #11', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Create dashboard UI #12', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Set up CI/CD pipeline #13', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Database schema design #14', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Email notification module #15', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Search feature backend #16', 2, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement calendar view #17', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Testing user flows #18', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Optimize DB queries #19', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Write API documentation #20', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement login API #21', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Create dashboard UI #22', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Set up CI/CD pipeline #23', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Database schema design #24', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Email notification module #25', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Search feature backend #26', 2, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement calendar view #27', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Testing user flows #28', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Optimize DB queries #29', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Write API documentation #30', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement login API #31', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Create dashboard UI #32', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Set up CI/CD pipeline #33', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Database schema design #34', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Email notification module #35', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Search feature backend #36', 2, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement calendar view #37', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Testing user flows #38', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Optimize DB queries #39', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Write API documentation #40', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement login API #41', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Create dashboard UI #42', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Set up CI/CD pipeline #43', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Database schema design #44', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Email notification module #45', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Search feature backend #46', 2, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 1, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Implement calendar view #47', 3, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 2, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Testing user flows #48', 1, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 3, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Optimize DB queries #49', 4, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 4, 1, FLOOR(RANDOM() * 3) + 1);

INSERT INTO task (name, priority, due_date, developer_id, project_id, status)
VALUES ('Write API documentation #50', 5, DATEADD('DAY', FLOOR(RAND() * 40) + 1, CURRENT_TIMESTAMP), 5, 1, FLOOR(RANDOM() * 3) + 1);