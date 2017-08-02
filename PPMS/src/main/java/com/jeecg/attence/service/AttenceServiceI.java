package com.jeecg.attence.service;
import com.jeecg.attence.entity.AttenceEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface AttenceServiceI extends CommonService{
	
 	public void delete(AttenceEntity entity) throws Exception;
 	
 	public Serializable save(AttenceEntity entity) throws Exception;
 	
 	public void saveOrUpdate(AttenceEntity entity) throws Exception;
 	
}
