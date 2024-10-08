package com.book.returnrepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.book.returnentity.ReturnRequest;

public interface ReturnReqRepo extends JpaRepository<ReturnRequest, Long>{

}
