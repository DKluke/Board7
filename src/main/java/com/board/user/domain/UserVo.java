package com.board.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//@Data : @Getter,@Setter,@ToString,
//		  @EqualsAndHashCode, @RequiredArgsConstructor 를 포함하고 있음

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVo {
	private String userid;
	private String passwd;
	private String username;
	private String email;
	private String upt;
	private int upoint;
	private String indate;
}
