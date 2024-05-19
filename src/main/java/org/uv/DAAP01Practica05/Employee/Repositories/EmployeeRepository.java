package org.uv.DAAP01Practica05.Employee.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.uv.DAAP01Practica05.Employee.Entities.Employee;

public interface EmployeeRepository extends JpaRepository <Employee, Long> {
}