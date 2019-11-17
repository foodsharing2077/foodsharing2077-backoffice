-- begin JUNCTION_PRODUCT
create table JUNCTION_PRODUCT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end JUNCTION_PRODUCT
-- begin JUNCTION_CART
create table JUNCTION_CART (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID uuid,
    STATUS varchar(50),
    ADDRESS_BEGIN_ID uuid,
    ADDRESS_END_ID uuid,
    --
    primary key (ID)
)^
-- end JUNCTION_CART
-- begin JUNCTION_ADDRESS
create table JUNCTION_ADDRESS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    LATITUDE double precision,
    NAME varchar(255),
    LONGITUDE double precision,
    --
    primary key (ID)
)^
-- end JUNCTION_ADDRESS
-- begin JUNCTION_BONUS
create table JUNCTION_BONUS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID uuid,
    COUNT_ integer,
    CART_ID_ID uuid,
    --
    primary key (ID)
)^
-- end JUNCTION_BONUS
-- begin JUNCTION_CART_PRODUCT_LINK
create table JUNCTION_CART_PRODUCT_LINK (
    CART_ID uuid,
    PRODUCT_ID uuid,
    primary key (CART_ID, PRODUCT_ID)
)^
-- end JUNCTION_CART_PRODUCT_LINK
-- begin JUNCTION_MAP
create table JUNCTION_MAP (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    IMAGE_FILE_ID uuid,
    MAP varchar(255),
    --
    primary key (ID)
)^
-- end JUNCTION_MAP
