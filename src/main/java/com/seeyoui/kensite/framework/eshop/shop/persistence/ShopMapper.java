/*
 * Powered By cuichen
 * Since 2014 - 2017
 */
package com.seeyoui.kensite.framework.eshop.shop.persistence;

import com.seeyoui.kensite.common.base.domain.EasyUIDataGrid;
import com.seeyoui.kensite.framework.eshop.shop.domain.Shop;

import java.util.*;

import com.seeyoui.kensite.common.exception.CRUDException;

/**
 * 商铺
 * @author cuichen
 * @version 2.0
 * @since 1.0
 * @date 2017-03-07
 */

public interface ShopMapper {

	/**
	 * 根据ID查询单条数据
	 * @param id
	 * @return
	 */
	public Shop findOne(String id);
	
	/**
	 * 查询数据集合
	 * @param shop
	 * @return
	 */
	public List<Shop> findList(Shop shop);
	
	/**
	 * 查询所有数据集合
	 * @param shop
	 * @return
	 */
	public List<Shop> findAll(Shop shop);
	
	/**
	 * 查询数据总数
	 * @param shop
	 * @return
	 */
	public int findTotal(Shop shop);

	/**
	 * 查询数据总数排除当前数据
	 * @param shop
	 * @return
	 */
	public int findExTotal(Shop shop);
	
	/**
	 * 数据新增
	 * @param shop
	 */
	public void save(Shop shop);
	
	/**
	 * 数据修改
	 * @param shop
	 */
	public void update(Shop shop);
	
	/**
	 * 数据删除
	 * @param listId
	 */
	public void delete(List<String> listId);
	
	/**
	 * 数据假删除
	 * @param shop
	 */
	public void remove(Shop shop);
	
}