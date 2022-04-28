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
	
	//새로운 글 쓰기----------------------------------------------------------------------
	public int insert(CustomerDTO dto, String name, String city) {
		String sql = "INSERT INTO Customers(CustomerName, City) "
				+ "VALUES(?, ?)";
		int res = 0 ;
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setString(1, name);
			pstmt.setString(2, city);
			
			res = pstmt.executeUpdate();
	
		}catch(Exception e) {
			e.printStackTrace();
		}

		return res;
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
		/*System.out.println(db_update.getName()); System.out.println(db_update.getCity()); System.out.println(db_update.getId());*/
		
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
	public int delete(int id) {
		String sql = "DELETE FROM Customers WHERE CustomerID = ?";
		int res = 0;
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, id);
			res = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
}
