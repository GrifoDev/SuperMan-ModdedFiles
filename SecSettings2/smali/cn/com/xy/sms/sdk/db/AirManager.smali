.class public Lcn/com/xy/sms/sdk/db/AirManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final AIR_NUM:Ljava/lang/String; = "air_num"

.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table  if not exists tb_air (id INTEGER PRIMARY KEY,air_num TEXT not null unique,start_city TEXT,end_city TEXT,start_place TEXT,end_place TEXT,start_time TEXT,end_time TEXT,company TEXT)"

.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_air"

.field public static final END_CITY:Ljava/lang/String; = "end_city"

.field public static final END_PALCE:Ljava/lang/String; = "end_place"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final START_CITY:Ljava/lang/String; = "start_city"

.field public static final START_PLACE:Ljava/lang/String; = "start_place"

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_air"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdateData()Z
    .locals 1

    new-instance v0, Lcn/com/xy/sms/sdk/db/a;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/a;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/a;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public static importAirData(Landroid/content/Context;)V
    .locals 14

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getDRAWBLE_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "air_data.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/XyUtil;->getLineByCompressFile(Ljava/lang/String;)Ljava/io/LineNumberReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "air_num"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "start_place"

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "end_place"

    const/4 v10, 0x2

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "tb_air"

    const-string/jumbo v10, "air_num=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v0, v0, v13

    aput-object v0, v11, v12

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v12, 0x1

    cmp-long v0, v10, v12

    if-ltz v0, :cond_2

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v0, "tb_air"

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "importAirData: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_1
    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_2
    move v0, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_3
    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v2

    goto :goto_2
.end method

.method public static queryStartEndPlace(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v0, "tb_air"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start_place"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "end_place"

    aput-object v4, v1, v3

    const-string/jumbo v3, "air_num = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start_place"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "end_place"

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v4

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AirManager queryStartEndPlace"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
