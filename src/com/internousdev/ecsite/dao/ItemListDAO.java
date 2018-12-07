package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.internousdev.ecsite.util.DBConnector;



public class ItemListDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	public ArrayList<ItemInfoDTO> getItemInfo() throws SQLException{
		ArrayList<ItemInfoDTO> itemListDTO = new ArrayList<ItemInfoDTO>();
		String sql = "SELECT * FROM item_info_transaction";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			//preparedStatement.setString(1, id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				ItemInfoDTO dto = new ItemInfoDTO();
				dto.setId(resultSet.getString("id"));
				dto.setItemName(resultSet.getString("item_name"));
				dto.setItemPrice(resultSet.getString("item_price"));
				dto.setItemStock(resultSet.getString("item_stock"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				itemListDTO.add(dto);
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally {
			connection.close();
		}
		return itemListDTO;
	}

	public int itemDelete(String id) throws SQLException{
		String sql = "DELETE FROM item_info_transaction WHERE id = ?";
		PreparedStatement preparedStatement;
		int result = 0;

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			result = preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connection.close();
		}
		return result;
	}


}
