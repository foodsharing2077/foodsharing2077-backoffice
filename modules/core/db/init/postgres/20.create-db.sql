-- begin JUNCTION_PRODUCT
create unique index IDX_JUNCTION_PRODUCT_UK_NAME on JUNCTION_PRODUCT (NAME) where DELETE_TS is null ^
-- end JUNCTION_PRODUCT
-- begin JUNCTION_CART
alter table JUNCTION_CART add constraint FK_JUNCTION_CART_ON_USER foreign key (USER_ID) references SEC_USER(ID)^
alter table JUNCTION_CART add constraint FK_JUNCTION_CART_ON_ADDRESS_BEGIN foreign key (ADDRESS_BEGIN_ID) references JUNCTION_ADDRESS(ID)^
alter table JUNCTION_CART add constraint FK_JUNCTION_CART_ON_ADDRESS_END foreign key (ADDRESS_END_ID) references JUNCTION_ADDRESS(ID)^
create index IDX_JUNCTION_CART_ON_USER on JUNCTION_CART (USER_ID)^
create index IDX_JUNCTION_CART_ON_ADDRESS_BEGIN on JUNCTION_CART (ADDRESS_BEGIN_ID)^
create index IDX_JUNCTION_CART_ON_ADDRESS_END on JUNCTION_CART (ADDRESS_END_ID)^
-- end JUNCTION_CART
-- begin JUNCTION_BONUS
alter table JUNCTION_BONUS add constraint FK_JUNCTION_BONUS_ON_USER foreign key (USER_ID) references SEC_USER(ID)^
alter table JUNCTION_BONUS add constraint FK_JUNCTION_BONUS_ON_CART_ID foreign key (CART_ID_ID) references JUNCTION_CART(ID)^
create index IDX_JUNCTION_BONUS_ON_USER on JUNCTION_BONUS (USER_ID)^
create index IDX_JUNCTION_BONUS_ON_CART_ID on JUNCTION_BONUS (CART_ID_ID)^
-- end JUNCTION_BONUS
-- begin JUNCTION_CART_PRODUCT_LINK
alter table JUNCTION_CART_PRODUCT_LINK add constraint FK_CARPRO_ON_CART foreign key (CART_ID) references JUNCTION_CART(ID)^
alter table JUNCTION_CART_PRODUCT_LINK add constraint FK_CARPRO_ON_PRODUCT foreign key (PRODUCT_ID) references JUNCTION_PRODUCT(ID)^
-- end JUNCTION_CART_PRODUCT_LINK
-- begin JUNCTION_MAP
alter table JUNCTION_MAP add constraint FK_JUNCTION_MAP_ON_IMAGE_FILE foreign key (IMAGE_FILE_ID) references SYS_FILE(ID)^
create index IDX_JUNCTION_MAP_ON_IMAGE_FILE on JUNCTION_MAP (IMAGE_FILE_ID)^
-- end JUNCTION_MAP
