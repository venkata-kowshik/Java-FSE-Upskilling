
-- INSERT DATA INTO USERS


INSERT INTO Users (full_name, email, city, registration_date)
VALUES
('Arjun Reddy', 'arjun.reddy@gmail.com', 'Hyderabad', '2024-12-01'),
('Priya Sharma', 'priya.sharma@gmail.com', 'Mumbai', '2024-12-05'),
('Vikram Singh', 'vikram.singh@gmail.com', 'Delhi', '2024-12-10'),
('Ananya Iyer', 'ananya.iyer@gmail.com', 'Chennai', '2025-01-15'),
('Rahul Verma', 'rahul.verma@gmail.com', 'Pune', '2025-02-01');


-- INSERT DATA INTO EVENTS


INSERT INTO Events
(title, description, city, start_date, end_date, status, organizer_id)
VALUES
(
'Hyderabad Tech Summit',
'A large meetup for software engineers and innovators.',
'Hyderabad',
'2025-06-10 10:00:00',
'2025-06-10 16:00:00',
'upcoming',
1
),
(
'Mumbai AI Conference',
'A conference focused on Artificial Intelligence and Data Science.',
'Mumbai',
'2025-05-15 09:00:00',
'2025-05-15 17:00:00',
'completed',
2
),
(
'Delhi Frontend Bootcamp',
'Hands-on training for HTML, CSS, and JavaScript.',
'Delhi',
'2025-07-01 10:00:00',
'2025-07-03 16:00:00',
'upcoming',
3
);



-- INSERT DATA INTO SESSIONS


INSERT INTO Sessions
(event_id, title, speaker_name, start_time, end_time)
VALUES
(
1,
'Opening Ceremony',
'Suresh Kumar',
'2025-06-10 10:00:00',
'2025-06-10 11:00:00'
),
(
1,
'Cloud Computing Future',
'Meera Nair',
'2025-06-10 11:15:00',
'2025-06-10 12:30:00'
),
(
2,
'AI in India',
'Rohit Mehta',
'2025-05-15 09:30:00',
'2025-05-15 11:00:00'
),
(
3,
'HTML & CSS Basics',
'Kavya Reddy',
'2025-07-01 10:00:00',
'2025-07-01 12:00:00'
);


-- INSERT INTO REGISTRATIONS

INSERT INTO Registrations
(user_id, event_id, registration_date)
VALUES
(1, 1, '2025-05-01'),
(2, 1, '2025-05-02'),
(3, 2, '2025-04-30'),
(4, 2, '2025-04-28'),
(5, 3, '2025-06-15');


-- INSERT INTO FEEDBACK


INSERT INTO Feedback
(user_id, event_id, rating, comments, feedback_date)
VALUES
(
3,
2,
4,
'Very insightful AI sessions and well organized.',
'2025-05-16'
),
(
4,
2,
5,
'Excellent conference with great speakers.',
'2025-05-16'
),
(
2,
1,
3,
'Good event but could include more hands-on demos.',
'2025-06-11'
);



-- INSERT INTO RESOURCES


INSERT INTO Resources
(event_id, resource_type, resource_url, uploaded_at)
VALUES
(
1,
'pdf',
'https://portal.com/resources/hyderabad_agenda.pdf',
'2025-05-01 10:00:00'
),
(
2,
'image',
'https://portal.com/resources/mumbai_ai_poster.jpg',
'2025-04-20 09:00:00'
),
(
3,
'link',
'https://portal.com/resources/delhi_bootcamp_material',
'2025-06-25 15:00:00'
);