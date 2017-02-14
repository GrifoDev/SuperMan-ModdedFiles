.class final Lcn/com/xy/sms/util/q;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/util/p;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/util/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/util/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/q;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/util/q;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/util/q;->g:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/util/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move-object v2, v3

    :goto_1
    if-nez p1, :cond_4

    :cond_0
    move-object v4, v3

    :goto_2
    if-nez p1, :cond_5

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/q;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_8

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/com/xy/sms/util/q;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryTrainInfo: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    array-length v0, p1

    if-ne v0, v5, :cond_0

    aget-object v0, p1, v8

    if-eqz v0, :cond_0

    const-string/jumbo v0, "offNetwork"

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "offNetwork"

    move-object v4, v0

    goto :goto_2

    :cond_5
    :try_start_2
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    iget-object v0, p0, Lcn/com/xy/sms/util/q;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_16

    :cond_7
    return-void

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_3
    const-string/jumbo v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_b

    :cond_9
    :goto_3
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_4
    if-nez p1, :cond_d

    :cond_a
    :goto_5
    return-void

    :cond_b
    array-length v0, p1

    if-le v0, v8, :cond_9

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    const-string/jumbo v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryTrainInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    :try_start_4
    array-length v0, p1

    if-lez v0, :cond_a

    iget-object v1, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/q;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/q;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2, v4}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :cond_e
    const/4 v0, 0x1

    :try_start_5
    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v0, v1, v6}, Lcn/com/xy/sms/util/ParseManager;->checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    :try_start_6
    iget-object v0, p0, Lcn/com/xy/sms/util/q;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_6
    if-nez v2, :cond_10

    :cond_f
    return-void

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :try_start_7
    const-string/jumbo v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_13

    :cond_11
    :goto_7
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v0

    if-eqz v0, :cond_14

    :goto_8
    if-nez p1, :cond_15

    :cond_12
    :goto_9
    throw v1

    :cond_13
    :try_start_8
    array-length v0, p1

    if-le v0, v8, :cond_11

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "station_list"

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_14
    const-string/jumbo v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryTrainInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_15
    :try_start_9
    array-length v0, p1

    if-lez v0, :cond_12

    iget-object v3, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/q;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/util/q;->f:Ljava/lang/String;

    invoke-static {v3, v4, v0, v2, v5}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_9

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_a
    const-string/jumbo v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_19

    :cond_17
    :goto_a
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_b
    if-nez p1, :cond_1b

    :cond_18
    :goto_c
    return-void

    :cond_19
    array-length v0, p1

    if-le v0, v8, :cond_17

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1a
    const-string/jumbo v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryTrainInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_1b
    :try_start_b
    array-length v0, p1

    if-lez v0, :cond_18

    iget-object v1, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/q;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/q;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2, v4}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_6
.end method
