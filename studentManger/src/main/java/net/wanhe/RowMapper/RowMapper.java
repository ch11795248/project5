package net.wanhe.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by 59611 on 2018/9/21.
 */
public interface RowMapper<T> {
    T  mapRow(ResultSet rs) throws SQLException;
}
