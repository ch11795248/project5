package net.wanhe.mapper;

import net.wanhe.dto.StudentDto;
import net.wanhe.model.Student;
import org.apache.ibatis.annotations.Param;

/**
 * Created by chenhuan on 2018/10/9.
 */
public interface StudentMapper {
    StudentDto getStudentById(@Param("id") Integer id);
}
