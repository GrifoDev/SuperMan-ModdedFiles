.class final Lcn/com/xy/sms/sdk/queue/f;
.super Ljava/lang/Thread;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    const-string/jumbo v2, "xiaoyuan_bubbletaskqueue"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/queue/f;->setName(Ljava/lang/String;)V

    sget v2, Lcn/com/xy/sms/sdk/queue/g;->b:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    sget-object v2, Lcn/com/xy/sms/sdk/queue/e;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v12, v0

    if-eqz v12, :cond_0

    const-string/jumbo v2, "dataStatu"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    if-eqz v9, :cond_0

    const-string/jumbo v2, "dataType"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    :goto_1
    const/4 v10, 0x1

    :cond_1
    if-nez v10, :cond_10

    :cond_2
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v2, "msg_id"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v2, "centerNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v2, "smsContent"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v2, "smsReceiveTime"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "CACHE_SDK_MSG_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "RichBubbleTaskQueue"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v2, "msg_id"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v2, "centerNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v2, "smsContent"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v2, "smsReceiveTime"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "CACHE_SDK_MSG_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "save_time"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x278d00

    cmp-long v2, v4, v6

    if-gtz v2, :cond_7

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9

    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "msg_id"

    invoke-static {v12, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "phoneNum"

    invoke-static {v12, v4}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "centerNum"

    invoke-static {v12, v5}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "smsContent"

    invoke-static {v12, v6}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->parseMsgToSimpleBubbleResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "CACHE_SDK_MSG_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_d

    const/4 v3, 0x1

    :goto_a
    if-nez v3, :cond_0

    const-string/jumbo v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "session_lasttime"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v2, v3

    goto :goto_9

    :cond_b
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x278d00

    cmp-long v2, v4, v6

    if-gtz v2, :cond_c

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_a

    goto/16 :goto_8

    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    const-string/jumbo v2, "session_lasttime"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x278d00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "msg_id"

    invoke-static {v12, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "phoneNum"

    invoke-static {v12, v4}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "centerNum"

    invoke-static {v12, v5}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "smsContent"

    invoke-static {v12, v6}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->parseMsgToSimpleBubbleResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "CACHE_SDK_MSG_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_11

    const/4 v3, 0x1

    :goto_d
    if-nez v3, :cond_2

    const-string/jumbo v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v2, "phoneNum"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_11
    const/4 v3, 0x0

    goto :goto_d

    :cond_12
    const-string/jumbo v2, "save_time"

    invoke-static {v12, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    move v2, v10

    goto/16 :goto_4

    :cond_14
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x278d00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_13

    goto/16 :goto_3

    :cond_15
    const/4 v2, 0x0

    goto :goto_e
.end method
