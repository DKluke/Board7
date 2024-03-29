package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.menus.domain.MenuVo;

@Mapper
public interface MenuMapper {

	// error
	// void insertMenu(String menu_id, String menu_name, int menu_seq);

	// menuMapper.xml 에서 id="insertMenu" SQL 문을 찾아서 실행
	void insertMenu( MenuVo menuVo );

	List<MenuVo> getMenuList();

	void deleteMenu(MenuVo menuVo);

	void insertMenuByName(MenuVo menuVo);

	MenuVo getMenu(String menu_id);

	void updateMenu(MenuVo menuVo);

	
	/*     UPDATE   MENUS
     SET	  MENU_NAME = #{menu_name},
     		  MENU_SEQ  = #{menu_seq}
     WHERE    MENU_ID  = #{menu_id}
     */
	
}







