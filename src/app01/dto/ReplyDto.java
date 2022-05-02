package app01.dto;

import java.time.LocalDateTime;

public class ReplyDto {
	private int id;
	private int boardId;
	private String content;
	private LocalDateTime inserted;
	
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
