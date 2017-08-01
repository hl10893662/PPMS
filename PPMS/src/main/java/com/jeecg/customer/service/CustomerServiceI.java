package com.jeecg.customer.service;
import com.jeecg.customer.entity.CustomerEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CustomerServiceI extends CommonService{
	
 	public void delete(CustomerEntity entity) throws Exception;
 	
 	public Serializable save(CustomerEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CustomerEntity entity) throws Exception;
 	
}
