package com.jeecg.charge.fee.service;
import java.io.Serializable;

import org.jeecgframework.core.common.service.CommonService;

import com.jeecg.charge.fee.entity.FeeEntity;

public interface FeeServiceI extends CommonService{
	
 	public void delete(FeeEntity entity) throws Exception;
 	
 	public Serializable save(FeeEntity entity) throws Exception;
 	
 	public void saveOrUpdate(FeeEntity entity) throws Exception;
 	
}
