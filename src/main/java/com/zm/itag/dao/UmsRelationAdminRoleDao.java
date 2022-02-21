package com.zm.itag.dao;

import com.zm.itag.mbg.model.UmsPermission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author zm
 * @date 2022/02/21 16:12
 * @description 后台用户与角色管理自定义Dao
 */
public interface UmsRelationAdminRoleDao {

    /**
     * 获取用户所有权限(包括+-权限)
     */
    List<UmsPermission> getPermissionList(@Param("adminId") Long adminId);
}
