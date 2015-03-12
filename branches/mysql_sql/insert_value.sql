-- insert user for admin
INSERT INTO T_USER(USERID,APP_ID,NAME,LOGIN_NAME,SALT,PASSWORD,CREATOR_ID,MODIFIER_ID,CREATE_DATE,LAST_MODIFY_DATE)
VALUES(1,1,'administrator','admin','9d58a5e4487f9801','45c10f6b4d2a1bb5e24224260d3c388c678a7858',1,1,'2013-10-10 12:00:00.000000','2013-10-10 12:00:00.000000');

-- insert app for system
INSERT INTO T_APP_LIST(APP_ID,CHI_NAME,ENG_NAME,DISPLAY_NAME,INDEX_URL,LOGIN_URL,LOGOUT_URL,TYPE,STATUS,VERSION,CREATOR_ID,MODIFIER_ID,CREATE_DATE,LAST_MODIFY_DATE)
VALUES(1,'综合应用系统','Complex Application System.','LoginBoot','index.htm','login','logout',0,0,'1.0.0.0',1,1,'2013-10-10 12:00:00.000000','2013-10-10 12:00:00.000000');

-- insert parameters 系统参数
INSERT INTO T_PARAMS(APP_ID,NAME,VALUE,NOTES)
VALUES(1,'SESSIONTIMEOUT','30','SESSION TIMEOUT(MINUTE)');
INSERT INTO T_PARAMS(APP_ID,NAME,VALUE,NOTES)
VALUES(1,'PWDMAXFAILTIMES','5','PASSWORD MAXIMUN FAILURE TIMES');
INSERT INTO T_PARAMS(APP_ID,NAME,VALUE,NOTES)
VALUES(1,'MAXONLINEUSER','mCPbMOv3tlMgKBLU0Hs6iQ==','MAX USER');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_VALID_DAYNUM', '60', 'Number of days, 0: No expiry');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_MIN_LENGTH', '6', 'Min length');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_MIN_ALPHA_CHAR', '3','Min alpha characters');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_MIN_NUM_CHAR', '2', 'Min numeric characters');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_MIN_SPECIAL_CHAR', '0', 'Min special characters');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_HIST_SIZE', '3','Password history list size');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'PWD_CONTAIN_UPPER_CHAR', 'false', 'Force lowercase and uppercase character');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'DATA_KEEP_IN_HISTORY', '100', 'Data keep in history days');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'DATA_KEEP_IN_LIVE', '100', 'Data keep in live days');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'DETERMINATION_REMARK', 'true', 'Hit details with remarks');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES(1, 'RELEASETIMES', '10', 'Automatic release Record duration (minutes)');
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES( 1, 'REQ_RECORD_COMMENTS', 'false', null);
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES( 1, 'REQ_HIT_COMMENTS', 'false', null);
INSERT INTO T_PARAMS( APP_ID, NAME, VALUE, NOTES) VALUES( 1, 'RECDEC_CONSISTENT_HITS', 'false', null);

-- 菜单信息
-- SystemManage
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1000,'MENU.001000',0,1000,'','system',0,2);
-- 权限管理
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1010,'MENU.001010',2,1000,'system/menu.do','system-menu',1,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1012,'MENU.001012',1,1010,'','system-menu-upd',2,2);

-- System Role Management
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1020,'MENU.001020',2,1000,'system/role.do','system-role',1,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1021,'MENU.001021',1,1020,'','system-role-add',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1022,'MENU.001022',1,1020,'','system-role-upd',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1023,'MENU.001023',1,1020,'','system-role-del',2,2);
-- System User Management
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1030,'MENU.001030',2,1000,'system/user.do','system-user',1,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1031,'MENU.001031',1,1030,'','system-user-add',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1032,'MENU.001032',1,1030,'','system-user-upd',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1033,'MENU.001033',1,1030,'','system-user-del',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1034,'MENU.001034',1,1030,'','system-user-rpw',2,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1035,'MENU.001035',1,1035,'','system-user-userAccExp',0,2);

-- 系统参数
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1040,'MENU.001040',2,1000,'system/params.do','system-params',1,2);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1042,'MENU.001042',1,1040,'','system-params-upd',2,2);
-- System Client Management
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1050,'MENU.001050',2,1000,'system/appList.do','system-appList',1,0);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1051,'MENU.001051',1,1050,'','system-appList-add',2,0);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1052,'MENU.001052',1,1050,'','system-appList-upd',2,0);
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1053,'MENU.001053',1,1050,'','system-appList-del',2,0);
-- 审计日记
INSERT INTO T_MENU(MID,NAME,TYPE,PID,URI,PERMISSION,DEPTH,`RANGE`)
VALUES(1090,'MENU.001090',2,1000,'system/atlog.do','system-atlog',1,2);

-- initialize the role 角色信息
INSERT INTO T_ROLE(RID,APP_ID,NAME,DESCRIPTION,CREATOR_ID,MODIFIER_ID,CREATE_DATE,LAST_MODIFY_DATE)
VALUES(1,1,'admin','admin role',1,1,'2013-10-10 12:00:00.000000','2013-10-10 12:00:00.000000');

-- initialize the user_role 用户角色关联
INSERT INTO T_USER_ROLE(USERID,RID) VALUES(1,1);

-- initialize the T_ROLE_MENU 角色菜单关联
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1000);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1010);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1012);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1020);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1021);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1022);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1023);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1030);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1031);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1032);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1033);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1034);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1040);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1042);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1050);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1051);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1052);
INSERT INTO T_ROLE_MENU(RID,MID) VALUES(1,1053);


-- 应用与菜单关联信息
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1000);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1010);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1012);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1020);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1021);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1022);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1023);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1030);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1031);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1032);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1033);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1034);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1040);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1042);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1050);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1051);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1052);
INSERT INTO T_APP_MENU(APP_ID,MID) VALUES(1,1053);

