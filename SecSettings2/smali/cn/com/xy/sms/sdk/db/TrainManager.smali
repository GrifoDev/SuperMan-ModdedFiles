.class public Lcn/com/xy/sms/sdk/db/TrainManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final ADD_DATA_TIME:Ljava/lang/String; = "ALTER TABLE tb_train ADD COLUMN data_time LONG default 0 "

.field public static final ADD_STATION_LIST:Ljava/lang/String; = "ALTER TABLE tb_train ADD COLUMN station_list TEXT "

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table  if not exists tb_train (id INTEGER PRIMARY KEY,train_num TEXT not null unique,start_city TEXT,end_city TEXT,train_type INTEGER default 0,start_time TEXT,end_time TEXT,mileage TEXT,station_list TEXT,duration TEXT,data_time LONG default 0)"

.field public static final DATA_TIME:Ljava/lang/String; = "data_time"

.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_train"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final END_CITY:Ljava/lang/String; = "end_city"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MILEAGE:Ljava/lang/String; = "mileage"

.field public static final START_CITY:Ljava/lang/String; = "start_city"

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final STATION_LIST:Ljava/lang/String; = "station_list"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_train"

.field public static final TRAIN_NUM:Ljava/lang/String; = "train_num"

.field public static final TRAIN_TYPE:Ljava/lang/String; = "train_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDataOnline(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    new-instance v0, Lcn/com/xy/sms/sdk/db/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/db/j;-><init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u6b21"

    const-string/jumbo v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v2, "990005"

    const-string/jumbo v4, ""

    const-string/jumbo v7, "checi"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcn/com/xy/sms/sdk/net/NetUtil;->executePubNumServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;ZZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkDataOnline: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static checkUpdateData()Z
    .locals 1

    new-instance v0, Lcn/com/xy/sms/sdk/db/i;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/i;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/i;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public static getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v8

    :cond_1
    :try_start_0
    const-string/jumbo v0, "stations"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stations"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "name"

    const-string/jumbo v7, "cz"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "spt"

    const-string/jumbo v7, "tcsj"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "stt"

    const-string/jumbo v7, "kcsj"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "day"

    const-string/jumbo v7, "rq"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "station_list"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "data_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "train_num"

    aput-object v2, v0, v1

    const-string/jumbo v2, "start_city"

    aput-object v2, v0, v9

    const-string/jumbo v2, "end_city"

    aput-object v2, v0, v10

    const-string/jumbo v2, "train_type"

    aput-object v2, v0, v11

    const/4 v2, 0x4

    const-string/jumbo v3, "start_time"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "end_time"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "mileage"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "station_list"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "duration"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "data_time"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "cc"

    aput-object v3, v2, v1

    const-string/jumbo v3, "sfz"

    aput-object v3, v2, v9

    const-string/jumbo v3, "zdz"

    aput-object v3, v2, v10

    const-string/jumbo v3, "lclx"

    aput-object v3, v2, v11

    const/4 v3, 0x4

    const-string/jumbo v4, "fs"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "ds"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "lc"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "station_list"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ls"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "data_time"

    aput-object v4, v2, v3

    invoke-static {v8, v0, v2, p0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getContentValues: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public static getEndCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryEndCity(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getEndCity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static importTrainData(Landroid/content/Context;)V
    .locals 15

    const/4 v14, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getDRAWBLE_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "train_data.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/XyUtil;->getLineByCompressFile(Ljava/lang/String;)Ljava/io/LineNumberReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/4 v9, 0x6

    if-ne v0, v9, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v7, "\t"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v9, 0x5

    if-lt v7, v9, :cond_0

    const-string/jumbo v7, "train_num"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "end_city"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "start_time"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "end_time"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    aget-object v7, v0, v7

    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    const-string/jumbo v7, "tb_train"

    const-string/jumbo v9, "train_num=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v0, v0, v12

    aput-object v0, v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v12, 0x1

    cmp-long v0, v10, v12

    if-ltz v0, :cond_4

    move v0, v4

    :goto_2
    if-nez v0, :cond_0

    const-string/jumbo v0, "tb_train"

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "importTrainData: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_1
    const/4 v9, 0x7

    if-eq v0, v9, :cond_0

    :try_start_4
    const-string/jumbo v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_4
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "train_num"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    array-length v9, v0

    if-ge v9, v14, :cond_5

    :goto_5
    const-string/jumbo v9, "tb_train"

    const-string/jumbo v10, "train_num=?"

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

    if-ltz v0, :cond_6

    move v0, v4

    :goto_6
    if-nez v0, :cond_2

    const-string/jumbo v0, "tb_train"

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_7
    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_3
    :try_start_5
    const-string/jumbo v7, "station_list"

    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v0, v5

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v9, "end_city"

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_6
    move v0, v5

    goto :goto_6

    :cond_7
    invoke-static {v6, v4, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->closeDB(Ljava/lang/String;ZLjava/io/LineNumberReader;Ljava/io/BufferedReader;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v3, v2

    goto/16 :goto_3
.end method

.method public static queryEndCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v0, "\u6b21"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tb_train"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "end_city"

    aput-object v5, v3, v4

    const-string/jumbo v4, "train_num = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "end_city"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryEndCity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    :try_start_0
    const-string/jumbo v0, "\u6b21"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "train_num"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "start_city"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v4, "end_city"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "train_type"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v4, "start_time"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "end_time"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v4, "mileage"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "station_list"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string/jumbo v4, "duration"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string/jumbo v4, "data_time"

    aput-object v4, v3, v1

    const-string/jumbo v1, "tb_train"

    const-string/jumbo v4, "train_num = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v3, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadSingleDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryTrainInfo: "

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

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
