package com.zm.itag.mbg.mapper;

import com.zm.itag.mbg.model.UmsRelationRolePermission;
import com.zm.itag.mbg.model.UmsRelationRolePermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UmsRelationRolePermissionMapper {
    long countByExample(UmsRelationRolePermissionExample example);

    int deleteByExample(UmsRelationRolePermissionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsRelationRolePermission record);

    int insertSelective(UmsRelationRolePermission record);

    List<UmsRelationRolePermission> selectByExample(UmsRelationRolePermissionExample example);

    UmsRelationRolePermission selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsRelationRolePermission record, @Param("example") UmsRelationRolePermissionExample example);

    int updateByExample(@Param("record") UmsRelationRolePermission record, @Param("example") UmsRelationRolePermissionExample example);

    int updateByPrimaryKeySelective(UmsRelationRolePermission record);

    int updateByPrimaryKey(UmsRelationRolePermission record);
}