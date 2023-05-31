package com.ute.admin.role;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ute.common.entity.Role;

public interface IRoleRepository extends JpaRepository<Role, Integer> {
	Optional<Role> findByName(String name);
}
