package net.wanhe.mapper;

import net.wanhe.model.Project;
import org.apache.ibatis.annotations.Param;

/**
 * Created by chenhuan on 2018/10/9.
 */
public interface ProjectMapper {
    Project getProjectById(@Param("id") Integer id);
}
