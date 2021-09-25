INSERT INTO lesson_participants (title, teaching_ins, studying_students, 
room_number)
VALUES ('first grade', '034D4' , '904G5', '12A');
UPDATE lesson_participants
SET title = 'second cource' , teaching_ins = '046D3'
WHERE room_number = '11A';
DELETE FROM lesson_participants WHERE teaching_ins = '046D3'