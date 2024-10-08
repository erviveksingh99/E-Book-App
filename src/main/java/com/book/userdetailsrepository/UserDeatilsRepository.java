package com.book.userdetailsrepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.book.userdetailsentity.UserDetails;

@Repository
public interface UserDeatilsRepository extends JpaRepository<UserDetails, Integer>{

}
