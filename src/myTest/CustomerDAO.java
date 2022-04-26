package myTest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

public class CustomerDAO {
	// 전체출력
	public List<CustomerDTO> selectAll(){
		//db 연결
		String sql = "SELECT CustomerID, CustomerName, City, FROM Customers ORDER BY CustomerID";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool"); 
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
	
	//글 쓰기
	public int insert(CustomerDTO dto) {
		return 0;
	}
	//글 수정
	public int update(CustomerDTO db_update) {
		return 0;
	}
	
	//글 삭제
	public int delete(int db_no) {
		return 0;
	}
	
}
