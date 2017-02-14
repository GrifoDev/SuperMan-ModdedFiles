.class final Lcn/com/xy/sms/util/n;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/util/n;->g:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p8, p0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    iput-object p10, p0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    iput-object p11, p0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    iput-object p12, p0, Lcn/com/xy/sms/util/n;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 17

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move-object v13, v4

    :goto_1
    if-nez p1, :cond_3

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_b

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryFlightData: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v14, Lorg/json/JSONArray;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, ""

    const-string/jumbo v10, ""

    const-string/jumbo v9, ""

    const-string/jumbo v8, ""

    const-string/jumbo v7, ""

    const-string/jumbo v6, ""

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move/from16 v11, v16

    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_d

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v4, "FlightCompany"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "FlightDeptimePlanDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v4, "FlightArrtimePlanDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "FlightHTerminal"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "FlightDep"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "FlightArr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "FlightDepAirport"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "FlightArrAirport"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    :cond_a
    const-string/jumbo v12, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move-object v10, v12

    goto/16 :goto_2

    :cond_b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_3
    const-string/jumbo v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v13, v5}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryFlightData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_d
    :goto_3
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    invoke-static {v11}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    if-nez v13, :cond_1e

    :cond_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v5, ""

    const-string/jumbo v8, ""

    const-string/jumbo v2, ""

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->h:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v6, ""

    const-string/jumbo v9, ""

    const-string/jumbo v4, ""

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->i:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->j:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-static {v12}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/xy/sms/util/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto/16 :goto_3

    :cond_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v3, "FlightCompany"

    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightDeptimePlanDate"

    invoke-virtual {v4, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightArrtimePlanDate"

    invoke-virtual {v4, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightHTerminal"

    invoke-virtual {v4, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightDep"

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightArr"

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightQueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightDepAirport"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "FlightArrAirport"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/xy/sms/util/n;->l:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v13, :cond_17

    :cond_16
    return-void

    :cond_17
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :try_start_6
    const-string/jumbo v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v13, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v13, v4}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v13, v5}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryFlightData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v2

    :goto_4
    :try_start_7
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryFlightData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v13, :cond_19

    :cond_18
    return-void

    :cond_19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :try_start_8
    const-string/jumbo v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez v3, :cond_1a

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v13, v5}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-static {v13, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryFlightData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    :goto_6
    if-nez v13, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    :try_start_9
    const-string/jumbo v4, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v13, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez v3, :cond_1d

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5, v13, v6}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_8
    throw v2

    :cond_1d
    :try_start_a
    invoke-static {v13, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    :catch_5
    move-exception v3

    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryFlightData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_1e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :try_start_b
    const-string/jumbo v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/n;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/util/n;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/n;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v13, v5}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    return-void

    :catch_6
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryFlightData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto/16 :goto_6

    :catch_7
    move-exception v2

    move-object v3, v4

    goto/16 :goto_4
.end method
