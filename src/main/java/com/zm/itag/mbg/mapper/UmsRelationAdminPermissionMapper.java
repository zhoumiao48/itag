package com.zm.itag.mbg.mapper;

import com.zm.itag.mbg.model.UmsRelationAdminPermission;
import com.zm.itag.mbg.model.UmsRelationAdminPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UmsRelationAdminPermissionMapper {
    long countByExample(UmsRelationAdminPermissionExample example);

    int deleteByExample(UmsRelationAdminPermissionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsRelationAdminPermission record);

    int insertSelective(UmsRelationAdminPermission record);

    List<UmsRelationAdminPermission> selectByExample(UmsRelationAdminPermissionExample example);

    UmsRelationAdminPermission selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsRelationAdminPermission record, @Param("example") UmsRelationAdminPermissionExample example);

    int updateByExample(@Param("record") UmsRelationAdminPermission record, @Param("example") UmsRelationAdminPermissionExample example);

    int updateByPrimaryKeySelective(UmsRelationAdminPermission record);

    int updateByPrimaryKey(UmsRelationAdminPermission record);
}