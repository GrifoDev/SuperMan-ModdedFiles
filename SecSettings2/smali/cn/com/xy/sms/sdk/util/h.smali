.class final Lcn/com/xy/sms/sdk/util/h;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/util/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 19

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/sdk/util/h;->a:Z

    if-nez v2, :cond_11

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v2, "updataJars"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/o;->a()V

    const-string/jumbo v2, "emergencyArray"

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_2
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkJarsUpdate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/sdk/util/h;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_3
    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->b()V

    return-void

    :cond_4
    :try_start_2
    const-string/jumbo v2, "JARS_UPDATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/o;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/sdk/util/h;->a:Z

    if-nez v2, :cond_6

    :cond_5
    :goto_4
    return-void

    :cond_6
    const/4 v2, 0x2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_5
    if-eqz v2, :cond_5

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->b()V

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/xy/sms/sdk/db/entity/e;

    iget-object v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->d:Ljava/lang/String;

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->f:I

    if-nez v5, :cond_8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/g;->a(Lcn/com/xy/sms/sdk/db/entity/e;Z)V

    const/4 v2, 0x1

    move v3, v2

    goto :goto_6

    :cond_9
    :try_start_3
    check-cast v2, Lorg/json/JSONArray;

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string/jumbo v11, "delayStart"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v14, v11

    add-long/2addr v14, v6

    const-string/jumbo v11, "delayEnd"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    const-string/jumbo v11, "pver"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    :try_start_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v18, "version"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "url"

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "status"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "update_time"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "delaystart"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "delayend"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "pver"

    invoke-virtual {v11, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "tb_jar_list"

    const-string/jumbo v9, "name = ? "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v8, v10, v12

    invoke-static {v3, v11, v9, v10}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_7

    :catch_1
    move-exception v3

    :try_start_5
    const-string/jumbo v8, "XIAOYUAN"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateJarSubInfo: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/sdk/util/h;->a:Z

    if-nez v2, :cond_e

    :cond_a
    :goto_9
    throw v3

    :cond_b
    :try_start_6
    const-string/jumbo v2, "emergencyArray"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/d;->a(Lorg/json/JSONArray;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_d
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/xy/sms/sdk/db/entity/e;

    iget-object v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->d:Ljava/lang/String;

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->f:I

    if-nez v5, :cond_d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/g;->a(Lcn/com/xy/sms/sdk/db/entity/e;Z)V

    const/4 v2, 0x1

    move v3, v2

    goto :goto_a

    :cond_e
    const/4 v2, 0x2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    :goto_b
    if-eqz v2, :cond_a

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->b()V

    goto :goto_9

    :cond_f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :cond_10
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/xy/sms/sdk/db/entity/e;

    iget-object v6, v2, Lcn/com/xy/sms/sdk/db/entity/e;->d:Ljava/lang/String;

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    iget v6, v2, Lcn/com/xy/sms/sdk/db/entity/e;->f:I

    if-nez v6, :cond_10

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/g;->a(Lcn/com/xy/sms/sdk/db/entity/e;Z)V

    const/4 v2, 0x1

    move v4, v2

    goto :goto_c

    :cond_11
    const/4 v2, 0x2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_d
    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->b()V

    goto/16 :goto_1

    :cond_12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_13
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/xy/sms/sdk/db/entity/e;

    iget-object v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->d:Ljava/lang/String;

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    iget v5, v2, Lcn/com/xy/sms/sdk/db/entity/e;->f:I

    if-nez v5, :cond_13

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/g;->a(Lcn/com/xy/sms/sdk/db/entity/e;Z)V

    const/4 v2, 0x1

    move v3, v2

    goto :goto_e

    :cond_14
    move v2, v3

    goto :goto_d

    :cond_15
    move v2, v4

    goto :goto_b

    :cond_16
    move v2, v3

    goto/16 :goto_3

    :cond_17
    move v2, v3

    goto/16 :goto_5
.end method
