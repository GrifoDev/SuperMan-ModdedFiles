.class public Lcn/com/xy/sms/sdk/db/DBManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:I = 0x1e

.field private static b:Lcn/com/xy/sms/sdk/db/d; = null

.field private static c:I = 0x0

.field private static d:I = 0x0

.field public static final dataBaseName:Ljava/lang/String; = "smssdk.db"

.field public static dblock:Ljava/lang/Object;

.field private static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->b:Lcn/com/xy/sms/sdk/db/d;

    const/16 v0, 0x3e8

    sput v0, Lcn/com/xy/sms/sdk/db/DBManager;->c:I

    const/16 v0, 0x64

    sput v0, Lcn/com/xy/sms/sdk/db/DBManager;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->dblock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/DBManager;->b(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    monitor-exit v1

    return-object v2

    :cond_1
    :try_start_1
    monitor-exit v1

    return-object v5

    :cond_2
    const-string/jumbo v0, "xiaoyuan"

    const-string/jumbo v2, "createSQLiteDatabase: contexts is null"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-object v5

    :cond_3
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v3, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "$$$$$ db code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v5

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DBManager db inTransaction threadName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/d;
    .locals 5

    const-class v1, Lcn/com/xy/sms/sdk/db/DBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->b:Lcn/com/xy/sms/sdk/db/d;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->b:Lcn/com/xy/sms/sdk/db/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcn/com/xy/sms/sdk/db/d;

    const-string/jumbo v2, "smssdk.db"

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v4, v3}, Lcn/com/xy/sms/sdk/db/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->b:Lcn/com/xy/sms/sdk/db/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_3
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "xiaoyuan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DBManager close error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "$$$$$ db close cnt is null "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/com/xy/sms/sdk/db/DBManager;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-nez p3, :cond_2

    :goto_2
    if-nez p4, :cond_3

    :goto_3
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/d;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/LineNumberReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    :try_start_4
    invoke-static {p4}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :cond_4
    :try_start_5
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "closeDB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {p4}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v0

    const-string/jumbo v1, "xiaoyuan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DBManager closeDB error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "create table  if not exists tb_sdk_param (id int primary key,p_key TEXT,p_value TEXT,pextend_value TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_phone_info (id INTEGER PRIMARY KEY,iccid TEXT ,city TEXT,provinces TEXT,operator TEXT,areacode TEXT,ispost INTEGER DEFAULT 0,num TEXT,cnum TEXT,updateTime LONG,deft  INTEGER DEFAULT 0,net_updateTime LONG DEFAULT 0,user_provinces TEXT,user_areacode TEXT,user_operator TEXT,sim_index INTEGER DEFAULT -1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, " create table  if not exists tb_public_info ( id INTEGER PRIMARY KEY, pubId INTEGER not null unique, pubName TEXT not null, pubType TEXT, classifyCode TEXT, weiXin TEXT, weiBoName TEXT, weiBoUrl TEXT, introduce TEXT, address TEXT, faxNum TEXT, webSite TEXT, moveWebSite TEXT, versionCode TEXT, email TEXT, parentPubId int, slogan TEXT, rectLogoName TEXT, circleLogoName TEXT, extend TEXT, hasmenu int, loadMenuTime long, updateInfoTime long default 0, corpLevel INTEGER default 0 )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_public_menu_info ( id INTEGER PRIMARY KEY, menuCode text not null, pubId INTEGER, menuName text not null, menuType text not null, sendTo text, sp text , menuDesc text , sms text, url text, phoneNum text  , actionData text  , extend text  )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_public_num_info ( id INTEGER PRIMARY KEY, pubId INTEGER not null, num text not null, purpose text , areaCode text not null, ptype int default 1, main INTEGER default 0, communication INTEGER default 0, isfull INTEGER default 0, minLen INTEGER default 0, maxLen INTEGER default 0, len INTEGER default 0, ntype text, extend text, lastloadtime LONG default 0, isuse LONG default 0, isrulenum INTEGER default 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, " create table  if not exists tb_centernum_location_info ( id INTEGER PRIMARY KEY, cnum TEXT not null unique, areaCode TEXT, city TEXT, checkTime long, operator TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_scene_config (scene_id TEXT,sceneType INTEGER DEFAULT \'0\',isCheck INTEGER DEFAULT \'0\',sceneVersion TEXT,isUse INTEGER DEFAULT \'0\',useCount INTEGER DEFAULT \'0\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_res_download (id INTEGER PRIMARY KEY,scene_id TEXT,url TEXT,status INTEGER,pos INTEGER,last_load_time INTEGER DEFAULT \'0\' )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_scenerule_config (id TEXT,sceneRuleVersion TEXT,scene_id TEXT,province TEXT,operator TEXT,expire_date TEXT,Func_call INTEGER,Func_acc_url INTEGER,Func_reply_sms INTEGER,Func_config TEXT,res_urls TEXT,s_version TEXT,Scene_page_config TEXT,sceneType INTEGER DEFAULT \'-1\',isdownload INTEGER DEFAULT \'0\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_jar_list (id INTEGER PRIMARY KEY,name TEXT,version TEXT,url TEXT,status INTEGER DEFAULT \'0\',update_time INTEGER DEFAULT \'0\',delaystart INTEGER DEFAULT \'0\',delayend INTEGER DEFAULT \'0\',count INTEGER DEFAULT \'0\',last_load_time INTEGER DEFAULT \'0\' ,is_use INTEGER DEFAULT \'0\' ,pver TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_count_scene (scene_id TEXT,count INT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_popup_action_scene (scene_id TEXT, date TEXT, parse_times INTEGER DEFAULT \'0\', popup_times INTEGER DEFAULT \'0\' ) "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_menu_action (phone_num TEXT, date TEXT, company_num TEXT, function_mode TEXT, click_times INTEGER DEFAULT \'0\'  ) "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_button_action_scene (scene_id TEXT, date TEXT, action_type INTEGER DEFAULT \'0\', times INTEGER DEFAULT \'0\' ) "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_train (id INTEGER PRIMARY KEY,train_num TEXT not null unique,start_city TEXT,end_city TEXT,train_type INTEGER default 0,start_time TEXT,end_time TEXT,mileage TEXT,station_list TEXT,duration TEXT,data_time LONG default 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_air (id INTEGER PRIMARY KEY,air_num TEXT not null unique,start_city TEXT,end_city TEXT,start_place TEXT,end_place TEXT,start_time TEXT,end_time TEXT,company TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_menu_list (id INTEGER PRIMARY KEY,name TEXT,version TEXT,url TEXT,status INTEGER DEFAULT \'0\',update_time INTEGER DEFAULT \'0\',delaystart INTEGER DEFAULT \'0\',delayend INTEGER DEFAULT \'0\',count INTEGER DEFAULT \'0\',last_load_time INTEGER DEFAULT \'0\' )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_update_task ( id INTEGER PRIMARY KEY,content TEXT,t_group TEXT,t_version long )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_xml_res_download (id INTEGER PRIMARY KEY,scene_id TEXT,url TEXT,status INTEGER,pos INTEGER,last_load_time INTEGER DEFAULT \'0\' ,sceneType INTEGER DEFAULT \'0\',insert_time INTEGER DEFAULT \'0\' )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, " create table  if not exists tb_resourse_queue ( id INTEGER PRIMARY KEY, res_type INTEGER, res_version INTEGER, res_url TEXT, down_statu INTEGER DEFAULT \'0\', temp_filename TEXT, down_failed_time LONG DEFAULT \'0\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, " create table  if not exists tb_netquery_time ( id INTEGER PRIMARY KEY, phone_num TEXT,area_code TEXT, request_time LONG DEFAULT \'0\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE  IF NOT EXISTS tb_num_name (id INTEGER PRIMARY KEY, num TEXT NOT NULL UNIQUE, name TEXT NOT NULL,cmd TEXT , cnum TEXT,mark_time  LONG DEFAULT 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, " create table  if not exists tb_emergency_queue ( id INTEGER PRIMARY KEY, emVersion INTEGER, emContent TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table  if not exists tb_msg_url (  id INTEGER PRIMARY KEY, url TEXT, check_time integer default 0, check_statu integer default 0, third_check_statu integer default 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    const-string/jumbo v0, "ALTER TABLE tb_public_info ADD COLUMN classifyCode TEXT"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    const-string/jumbo v0, "ALTER TABLE tb_scene_config ADD COLUMN isCheck INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    const-string/jumbo v0, "ALTER TABLE tb_scene_config ADD COLUMN useCount INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    const-string/jumbo v0, "ALTER TABLE tb_scene_config ADD COLUMN isUse INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    const-string/jumbo v0, "ALTER TABLE tb_jar_list ADD COLUMN is_use INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    const-string/jumbo v0, "ALTER TABLE tb_train ADD COLUMN station_list TEXT "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    const-string/jumbo v0, "ALTER TABLE tb_train ADD COLUMN data_time LONG default 0 "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    const-string/jumbo v0, "ALTER TABLE tb_match_cache ADD COLUMN bubble_lasttime INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    const-string/jumbo v0, "ALTER TABLE tb_match_cache ADD COLUMN card_lasttime INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    const-string/jumbo v0, "ALTER TABLE tb_match_cache ADD COLUMN session_lasttime INTEGER DEFAULT \'0\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    const-string/jumbo v0, " ALTER TABLE tb_public_num_info ADD COLUMN lastloadtime LONG default 0"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, " ALTER TABLE tb_public_num_info ADD COLUMN isrulenum INTEGER default 0"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_netquery_time ADD COLUMN area_code TEXT"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_phone_info ADD COLUMN user_provinces TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_phone_info ADD COLUMN user_areacode TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_phone_info ADD COLUMN user_operator TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_phone_info ADD COLUMN sim_index INTEGER DEFAULT -1 "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_num_name ADD COLUMN cnum TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_num_name ADD COLUMN mark_time LONG DEFAULT 0"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_num_name ADD COLUMN cmd TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, " ALTER TABLE tb_public_info ADD COLUMN corpLevel INTEGER default 0"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_match_cache ADD COLUMN urls  TEXT"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_match_cache ADD COLUMN url_valid_statu INTEGER DEFAULT \'0\'"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE tb_jar_list ADD COLUMN pver TEXT "

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :try_start_b
    const-string/jumbo v0, "CREATE TABLE  IF NOT EXISTS tb_sms_parse_recorder (phone_num TEXT, sms_num INTEGER DEFAULT 0, success_num INTEGER DEFAULT 0, date_time INTEGER DEFAULT 0, query_flag INTEGER DEFAULT 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    const-string/jumbo v0, " ALTER TABLE tb_public_num_info ADD COLUMN isuse LONG default 0"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    sget-object v2, Lcn/com/xy/sms/sdk/db/DBManager;->dblock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    move v0, v1

    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public static excSql(Ljava/lang/String;Z)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "excSql: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_2
    :try_start_6
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "excSql: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {p0, p1, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {p0, p1, v1, v3, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-static {p0, p1, v1, v3, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2
.end method

.method public static execSQL(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/db/c;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/db/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void
.end method

.method public static getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sget v0, Lcn/com/xy/sms/sdk/db/DBManager;->c:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    :try_start_0
    sget v0, Lcn/com/xy/sms/sdk/db/DBManager;->d:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_3
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSQLiteDatabase inTransaction hashcode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "xiaoyuan"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "DBManager getSQLiteDatabase error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const/4 v0, 0x0

    sget-object v4, Lcn/com/xy/sms/sdk/db/DBManager;->dblock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v2

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    move-wide v0, v2

    monitor-exit v4

    return-wide v0

    :catch_0
    move-exception v1

    const-wide/16 v2, -0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    .locals 9

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/db/DBManager;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    .locals 11

    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v1, Lcn/com/xy/sms/sdk/db/XyCursor;

    invoke-direct {v1, v0, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v1, "xiaoyuan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DBManager 2query error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1
.end method

.method public static query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    .locals 12

    const/4 v10, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v1, Lcn/com/xy/sms/sdk/db/XyCursor;

    invoke-direct {v1, v0, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v1, "xiaoyuan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DBManager 1query error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v10

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1
.end method

.method public static rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v0, Lcn/com/xy/sms/sdk/db/XyCursor;

    invoke-direct {v0, v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v1, "xiaoyuan"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DBManager rawQuery error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveOrUpdateTableData(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    return-wide v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    neg-long v2, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "xiaoyuan"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DBManager saveOrUpdateTableData error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    sget-object v2, Lcn/com/xy/sms/sdk/db/DBManager;->dblock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    move v0, v1

    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method
