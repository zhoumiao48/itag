package com.zm.itag.mbg.mapper;

import com.zm.itag.mbg.model.UmsRelationAdminRole;
import com.zm.itag.mbg.model.UmsRelationAdminRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UmsRelationAdminRoleMapper {
    long countByExample(UmsRelationAdminRoleExample example);

    int deleteByExample(UmsRelationAdminRoleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsRelationAdminRole record);

    int insertSelective(UmsRelationAdminRole record);

    List<UmsRelationAdminRole> selectByExample(UmsRelationAdminRoleExample example);

    UmsRelationAdminRole selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsRelationAdminRole record, @Param("example") UmsRelationAdminRoleExample example);

    int updateByExample(@Param("record") UmsRelationAdminRole record, @Param("example") UmsRelationAdminRoleExample example);

    int updateByPrimaryKeySelective(UmsRelationAdminRole record);

    int updateByPrimaryKey(UmsRelationAdminRole record);
}