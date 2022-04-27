package myTest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class CustomerDAO  {
	private DataSource ds;
	
	public CustomerDAO(DataSource ds) {
		this.ds = ds;
	}
	// 전체출력----------------------------------------------------------------------
	public List<CustomerDTO> selectAll(){
		//db 연결
		String sql = "SELECT CustomerID, CustomerName, City FROM Customers ORDER BY CustomerID";
		
//		ServletContext application = SgetServletContext();
//		DataSource ds = (DataSource)application.getAttribute("dbpool"); 
		List<CustomerDTO> list = new ArrayList<CustomerDTO>();
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					CustomerDTO dto = new CustomerDTO();
					dto.setId(rs.getInt(1));
					dto.setName(rs.getString(2));
					dto.setCity(rs.getString(3));
					
					list.add(dto);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//글 쓰기----------------------------------------------------------------------
	public int insert(CustomerDTO dto) {
		return 0;
	}
	//글 수정----------------------------------------------------------------------
	// 수정버튼
	public CustomerDTO selectOne(int id) {
		// db연결
		String sql = "SELECT  CustomerID, CustomerName, City FROM Customers "
				+ "WHERE CustomerID = ?";
		CustomerDTO dto = new CustomerDTO();
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, id);
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					dto.setId(rs.getInt(1));
					dto.setName(rs.getString(2));
					dto.setCity(rs.getString(3));
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
		
	// db수정
	public int update(CustomerDTO db_update) {
		int res = 0;
		String sql = "UPDATE Customers SET CustomerName = ?, City = ? "
				+ "WHERE CustomerID = ?";
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setString(1, db_update.getName());
			pstmt.setString(2, db_update.getCity());
			pstmt.setInt(3, Integer.valueOf(db_update.getId()));
			
			res = pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	//글 삭제----------------------------------------------------------------------
	/*public int delete(int db_delete) {
		// String id = request.getParameter("id"); controller에서 져와야댐
		
		
		String sql = "DELETE FROM Customers WHERE CustomerID = ?";
			
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, Integer.valueOf(id));
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}*/
	
}
