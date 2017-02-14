.class public Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_phone_bubble_cache"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_phone_bubble_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInsertQueue(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static/range {p0 .. p5}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->saveOrUpdateObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public static findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "id"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "phone"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "minReceiveTime"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "maxReceiveTime"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "useBubbleViews"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "useBubbleLogoName"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "extend"

    aput-object v3, v0, v1

    const-string/jumbo v1, "tb_phone_bubble_cache"

    const-string/jumbo v3, "phone = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadSingleDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "findObjectByPhone: "

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

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "create table  if not exists tb_phone_bubble_cache (  id INTEGER PRIMARY KEY, phone TEXT UNIQUE, minReceiveTime LONG default 0, maxReceiveTime LONG default 0, useBubbleViews TEXT, useBubbleLogoName TEXT, extend TEXT)"

    return-object v0
.end method

.method public static reSetAllDataTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "minReceiveTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "maxReceiveTime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string/jumbo v1, "tb_phone_bubble_cache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reSetAllDataTime: "

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

.method public static saveOrUpdateObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    cmp-long v6, p1, v10

    if-gtz v6, :cond_6

    move v6, v3

    :goto_0
    if-nez v6, :cond_0

    const-string/jumbo v6, "maxReceiveTime"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, p1, v10

    if-ltz v6, :cond_7

    move v6, v3

    :goto_1
    if-nez v6, :cond_8

    const-string/jumbo v3, "maxReceiveTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    :goto_2
    invoke-static/range {p4 .. p4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_3
    invoke-static/range {p5 .. p5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_4
    invoke-static/range {p3 .. p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1
    :goto_5
    move-wide v2, v4

    :goto_6
    return-wide v2

    :cond_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-static/range {p3 .. p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_7
    cmp-long v7, p1, v10

    if-gtz v7, :cond_4

    :goto_8
    if-nez v3, :cond_5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_9
    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "phone"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "minReceiveTime"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v2, 0x4

    const-string/jumbo v8, "maxReceiveTime"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    aput-object v3, v7, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "useBubbleViews"

    aput-object v3, v7, v2

    const/4 v2, 0x7

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "useBubbleLogoName"

    aput-object v3, v7, v2

    const/16 v2, 0x9

    aput-object p4, v7, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "extend"

    aput-object v3, v7, v2

    const/16 v2, 0xb

    aput-object p5, v7, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v7}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;Z[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "tb_phone_bubble_cache"

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_6

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveOrUpdateObject: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_4
    move v3, v2

    goto :goto_8

    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x7fffffff

    add-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "0"

    goto/16 :goto_9

    :cond_6
    move v6, v2

    goto/16 :goto_0

    :cond_7
    move v6, v2

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "minReceiveTime"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, p1, v10

    if-gtz v6, :cond_9

    :goto_a
    if-nez v3, :cond_0

    const-string/jumbo v3, "minReceiveTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    :cond_9
    move v3, v2

    goto :goto_a

    :cond_a
    const-string/jumbo v3, "useBubbleLogoName"

    move-object/from16 v0, p4

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v3, "extend"

    move-object/from16 v0, p5

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v3, "useBubbleViews"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_b
    if-ge v2, v3, :cond_d

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_d
    if-eq v2, v3, :cond_10

    :goto_c
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-gtz v2, :cond_11

    :goto_d
    const-string/jumbo v2, "id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_6

    :cond_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "useBubbleViews"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    const-string/jumbo v2, "tb_phone_bubble_cache"

    const-string/jumbo v3, "phone=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    invoke-static {v2, v8, v3, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d
.end method
