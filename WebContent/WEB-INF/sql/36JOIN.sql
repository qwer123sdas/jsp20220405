USE mydb2;

SELECT * FROM Reply;
-- 게시물 별 댓글 수 (단 댓글이 없는 게시물은 안나옴)
SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) FROM Board b
INNER JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1 DESC
;

SELECT b.*, COUNT(r.id) FROM Board b
JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1 DESC
;


-- INNER JOIN
SELECT * FROM Board b INNER JOIN Reply r
ON b.id = r.board_id;
-- LEFT OUTER JOIN : board에는 있는데 reply에는 없는 것
SELECT * FROM Board b LEFT OUTER JOIN Reply r
ON b.id = r.board_id;
SELECT * FROM Board b LEFT JOIN Reply r
ON b.id = r.board_id;

-- RIGHT OUTER JOIN :
SELECT * FROM Board b RIGHT OUTER JOIN Reply r
ON b.id = r.board_id;

-- LEFT OUTER JOIN했던 결과와 같음
SELECT * FROM Reply r RIGHT OUTER JOIN Board b
ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT JOIN Board b
ON b.id = r.board_id;

-- 댓글이 없는 게시물 조회
SELECT * FROM Board b LEFT JOIN Reply r
ON b.id = r.board_id
WHERE r.id IS NULL;

-- 전체 게시물 조회하는데 with 댓글 수와 함꼐 조회
SELECT b.*, COUNT(r.id) NumOfReply FROM Board b
LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;
