package com.learning.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.learning.model.Student;

public class StudentDbUtil {

	private DataSource dataSource;

	public StudentDbUtil(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public void deleteStudent(Integer id) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			String sql = "DELETE FROM student WHERE id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.execute();
		} finally {
			close(con, ps, null);
		}
	}

	public void updateStudent(Student student) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE student SET first_name = ?, last_name = ?, email = ? WHERE id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, student.getFirstName());
			ps.setString(2, student.getLastName());
			ps.setString(3, student.getEmail());
			ps.setInt(4, student.getId());
			ps.execute();
		} finally {
			close(con, ps, null);
		}
	}

	public Student getStudent(String studentId) throws Exception {
		Integer id = null;
		if (studentId != null && !studentId.isBlank()) {
			id = Integer.parseInt(studentId);
		}
		Student existingStudent = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement("SELECT * FROM student WHERE id = ?");
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					String firstName = rs.getString("first_name");
					String lastName = rs.getString("last_name");
					String email = rs.getString("email");
					existingStudent = new Student(id, firstName, lastName, email);
				}
			} else {
				throw new Exception("Could not find student id: " + id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, ps, rs);
		}
		return existingStudent;
	}

	public void addStudent(Student student) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			String sql = "INSERT INTO student (first_name, last_name, email) VALUES (?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, student.getFirstName());
			ps.setString(2, student.getLastName());
			ps.setString(3, student.getEmail());
			ps.execute();
		} finally {
			close(con, ps, null);
		}
	}

	public List<Student> getStudents() throws Exception {
		List<Student> students = new ArrayList<>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM student ORDER BY first_name");
			if (rs != null) {
				while (rs.next()) {
					Integer id = rs.getInt("id");
					String firstName = rs.getString("first_name");
					String lastName = rs.getString("last_name");
					String email = rs.getString("email");
					Student tempStudent = new Student(id, firstName, lastName, email);
					students.add(tempStudent);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, stmt, rs);
		}
		return students;
	}

	private void close(Connection con, Statement stmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
