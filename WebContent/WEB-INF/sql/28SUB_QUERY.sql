USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT distinct b.id, b.title FROM Board b JOIN Reply r ON b.id = r.board_id;
-- subquery
SELECT id, title FROM Board 
WHERE id IN  -- (9, 14, 15); 
             (SELECT board_id FROM Reply);
                            

-- 댓글이 없는 게시물
-- JOIN
SELECT b.id, b.title
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id IS NULL;
-- subquery
SELECT id, title FROM Board
WHERE id NOT IN   -- (13, 15, 20, 21);
		     (SELECT board_id FROM Reply);
             
-- 게시글 별 댓글 수
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;
-- 이를 서브 쿼리로 해결해보기
SELECT b.*, (SELECT COUNT(r.id) FROM Reply r WHERE board_id = b.id) NumOfReply
FROM Board b
ORDER BY b.id DESC;
