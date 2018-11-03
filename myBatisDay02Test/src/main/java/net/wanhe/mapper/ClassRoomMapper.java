package net.wanhe.mapper;

import net.wanhe.model.ClassRoom;
import org.apache.ibatis.annotations.Param;

/**
 * Created by chenhuan on 2018/10/9.
 */
public interface ClassRoomMapper {
    ClassRoom getClassRoomByClassId(@Param("classId") Integer classId);
}
