alter table JUNCTION_MAP add constraint FK_JUNCTION_MAP_ON_IMAGE_FILE foreign key (IMAGE_FILE_ID) references SYS_FILE(ID);
create index IDX_JUNCTION_MAP_ON_IMAGE_FILE on JUNCTION_MAP (IMAGE_FILE_ID);
