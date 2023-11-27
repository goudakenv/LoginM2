package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import domain.Post;

public class PostDAO {
	private DataSource ds;
	
	public PostDAO(DataSource ds) {
		this.ds = ds;
	}
    public List<Post> getAllPosts() {
        List<Post> items = new ArrayList<>();
        String query = "SELECT * FROM items ORDER BY created_at DESC";

        try(Connection con = ds.getConnection()) {
        	PreparedStatement stmt = con.prepareStatement(query);
        	ResultSet resultSet = stmt.executeQuery(query);
            while (resultSet.next()) {
            	Post item = new Post();
                item.setId(resultSet.getInt("id"));
                item.setUsername(resultSet.getString("username"));
                item.setName(resultSet.getString("name"));
                item.setAge(resultSet.getString("age"));
                item.setMessage(resultSet.getString("message"));
                item.setCreatedAt(resultSet.getTimestamp("created_at"));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }

    public void addPost(Post item) {
        String query = "INSERT INTO items (username, message, name, age) VALUES (?, ?, ?, ?)";

        try(Connection con = ds.getConnection()) {
        	PreparedStatement stmt = con.prepareStatement(query);
        	System.out.println(item.getUsername());
        	System.out.println(item.getName());
        	System.out.println(item.getMessage());
        	stmt.setString(1, item.getUsername());
        	stmt.setString(2, item.getMessage());
        	stmt.setString(3, item.getName());
        	stmt.setString(4, item.getAge());
        	stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
