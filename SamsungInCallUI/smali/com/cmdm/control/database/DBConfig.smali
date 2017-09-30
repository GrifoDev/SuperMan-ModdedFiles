.class public Lcom/cmdm/control/database/DBConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVATION_TABLE:Ljava/lang/String; = "activation_list"

.field public static final APK_UPGRADE_DATA:Ljava/lang/String; = "apk_upgrade_data"

.field public static final APK_UPGRADE_DATA_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apk_upgrade_data (id integer primary key autoincrement,threadid INTEGER,downlength INTEGER,downloadurl varchar,version varchar)"

.field public static final BLACKLIST_TABLE:Ljava/lang/String; = "black_list"

.field public static final BLACK_TABLE:Ljava/lang/String; = "black"

.field public static final CAIXIANG_GROUPSHOW_TABLE:Ljava/lang/String; = "caixiang_groupshow"

.field public static final CAIXIANG_SETTING_TABLE:Ljava/lang/String; = "caixiang_setting"

.field public static final CAIXIANG_SHOWING_TABLE:Ljava/lang/String; = "caixiang_showing"

.field public static final CAIXIANG_SINCESHOW_TABLE:Ljava/lang/String; = "caixiang_sinceshow"

.field public static final CAIXIANG_VIDEO_LOG:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS filedownlog (id integer primary key autoincrement,videoid INTEGER, downpath varchar(100), threadid INTEGER, downlength INTEGER)"

.field public static final CAIXIANG_VIDEO_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS videotable (id integer primary key autoincrement,videoid varchar(100),filepath varchar(100),posterurl varchar(100),crstype varchar(100),crsname varchar(100),downloadtime varchar(100))"

.field public static final CAIYIN_SHOWING_TABLE:Ljava/lang/String; = "caiyin_showing"

.field public static final CONTACTS_LIST_INFO_TABLE:Ljava/lang/String; = "contact_info"

.field public static final CREATE_ACTIVATION_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS activation_list (softname text not null,  softpackage text not null primary key);"

.field public static final CREATE_BLACKLIST_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS black_list (autoid text primary key,  type text default null,  blacklistname text default null,  blacklistnum text default null);"

.field public static final CREATE_BLACK_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS black (mobile text not null primary key, name text, interceptcount INTEGER,addtime BIGINT)"

.field public static final CREATE_CAIXIANG_GROUPSHOW_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS caixiang_groupshow (autoid integer primary key autoincrement ,missdn text default null ,gid text not null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

.field public static final CREATE_CAIXIANG_SETTING_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS caixiang_setting (autoid integer primary key autoincrement ,isfirst text not null ,afterCalling text default 0 ,contactui text default 1 ,savelogin text default 0 ,galleryguide text default 1 ,isUpdateContact text default 0 ,showRing text default 1 ,mode text default 7 ,phone_num text default null ,password text default null ,isMatch text default 1 ,updatemode text default 0 ,loginmode text default 1 ,guidemask text default 1 ,showstyle text default 0 ,username text default null ,signname text default null ,member text default 0 ,trimMember text default 0 ,diypath text default null ,truck text default 1 ,defaultSystemUrl text default null ,defaultSystemContentID text default null ,defaultUrl text default null ,isOpenTextTrim text default 0 ,last_time datetime default (datetime(\'now\', \'localtime\')) ,shortbind text default 1 ,woyaoxiu text default 1 ,sendcaiman text default 1 ,serverAddress text default 1 ,clientid text default null ,clientKey text default null );"

.field public static final CREATE_CAIXIANG_SHOWING_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS caixiang_showing (autoid integer primary key autoincrement ,missdn text not null ,cid text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,url text not null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,thum_url text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

.field public static final CREATE_CAIXIANG_SINCESHOW_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS caixiang_sinceshow (autoid integer primary key autoincrement ,missdn text default null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

.field public static final CREATE_CAIYIN_SHOWING_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS caiyin_showing (autoid integer primary key autoincrement ,uid text not null ,missdn text not null ,cid text not null ,priority text default 1 ,settingId text default null ,dateType text default 1 ,settingWeek text default null ,settingStartDate text default 19700101 ,settingEndDate text default 29700101 ,settingStartTime text default 000000 ,settingEndTime text default 240000 ,timing text default 0 ,greeting text default null ,url text not null ,posterUrl text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

.field public static final CREATE_CONTACTS_LIST_INFO_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS contact_info (autoid text primary key,  contactnum text default null,  contactname text default null,  defaultcontactnum text default null,  contactid text default null,  statu text default null,  photoType text default 0,  type text default null,  namepinyin text default null,  photouri text default null, shortnum text default null, set_time datetime default(datetime(\'now\', \'localtime\')));"

.field public static final CREATE_FRAUD_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

.field public static final CREATE_HARASS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS harass (harassid text not null unique,  harassname text not null unique, smallimg text default null , bgimg text default null , marknum text default null, custom text default null, sort integer default null);"

.field public static final CREATE_INTERCEPT_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS intercept (mobile text not null,  mobiledes text not null, harassname text default null, date text default null);"

.field public static final CREATE_MARK_HARASS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS markharass (harassid text not null,  harassname text not null, smallimg text default null , bgimg text default null , mobile text not null unique, guishudi text default null, date text default null);"

.field public static final CREATE_SEARCH_HISTORY_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS search_history (keyword text not null, searchtime BIGINT);"

.field public static final CREATE_TRYTEXT_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS try_text (autoid text primary key,  num text default null,  status text default null); "

.field public static final CREATE_WHITE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS white (mobile text not null primary key,name text,addtime BIGINT)"

.field public static final FRAUD_TABLE:Ljava/lang/String; = "fraud_mobile"

.field public static final HARASS_TABLE:Ljava/lang/String; = "harass"

.field public static final INTERCEPT_TABLE:Ljava/lang/String; = "intercept"

.field public static final MARK_HARASS_TABLE:Ljava/lang/String; = "markharass"

.field public static final SEARCH_HISTORY_TABLE:Ljava/lang/String; = "search_history"

.field public static final SINAWEIBO_DATA_TABLE:Ljava/lang/String; = "sina_weibo_data"

.field public static final SINA_WEIBO_DATA_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sina_weibo_data (sina_token varchar,sina_expiretime varchar,sina_uid varchar)"

.field public static final TECENTWEIBO_DATA_TABLE:Ljava/lang/String; = "tecent_weibo_data"

.field public static final TECENT_WEIBO_DATA_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tecent_weibo_data (tecent_token varchar,tecent_expiretime varchar,tecent_openid varchar,tecent_openkey varchar)"

.field public static final TRYTEXT_TABLE:Ljava/lang/String; = "try_text"

.field public static final VIDEO_LOG:Ljava/lang/String; = "filedownlog"

.field public static final VIDEO_TABLE:Ljava/lang/String; = "videotable"

.field public static final WHITE_TABLE:Ljava/lang/String; = "white"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
