package app01.dto;

import java.time.LocalDateTime;

public class ReplyDto {
	private int id;
	private int boardId;
	private String content;
	private LocalDateTime inserted;
	
	// 입력날짜를 깔끔하게 만드는 메소드
	public String getPrettyInserted() {
		// 24시간 이내면 시간만
		// 이전이면 년-월-일
		LocalDateTime now = LocalDateTime.now();
		if(now.minusHours(24).isBefore(inserted)) {
			return inserted.toLocalTime().toString();
		}else {
			return inserted.toLocalDate().toString();
		}
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	public void setInserted(LocalDateTime inserted) {
		this.inserted = inserted;
	}
	public LocalDateTime getInserted() {
		return inserted;
	}
}
