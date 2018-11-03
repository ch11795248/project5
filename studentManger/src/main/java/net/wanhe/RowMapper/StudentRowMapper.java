package net.wanhe.RowMapper;

import net.wanhe.pojo.Student;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by 59611 on 2018/9/21.
 */
public class StudentRowMapper implements RowMapper {
    @Override
    public Object mapRow(ResultSet rs) throws SQLException {
        return new Student(rs.getInt("id"),rs.getString("name"),rs.getInt("age"));
    }
}
