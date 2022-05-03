SELECT * FROM Customers;

USE mydb2;
SELECT * FROM Board; -- 4개열, 10개행
SELECT * FROM Reply;  -- 4개열, 3개행

SELECT * FROM Board, Reply;  -- 결합(Cartesian Product)  // 8개의 열(4+4), 30개열(10*3)
SELECT * FROM Reply, Board; 
SELECT * FROM Board JOIN Reply; -- Cartesian Product

-- INNER JOIN
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id;
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id;
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id;