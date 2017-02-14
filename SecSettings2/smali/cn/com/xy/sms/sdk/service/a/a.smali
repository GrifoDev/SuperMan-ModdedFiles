.class public final Lcn/com/xy/sms/sdk/service/a/a;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/j;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v10, :cond_4

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/a/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V

    :goto_0
    return-object v11

    :cond_0
    :try_start_0
    const-string/jumbo v3, "updateInfoTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    const-string/jumbo v5, "actions"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v5, 0x1b

    const-wide v8, 0x9a7ec800L

    invoke-static {v5, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-object v4

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v10, :cond_3

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/a/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryOperatorCmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_4
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "-1"

    aput-object v3, v2, v1

    const-string/jumbo v1, "have no available net work"

    aput-object v1, v2, v0

    invoke-static {p3, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "isNewThread"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "isNewThread"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/k;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "updateInfoTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v3, 0x1a

    const-wide v6, 0x9a7ec800L

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "0"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "-2"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "0"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "-1"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v2, Lcn/com/xy/sms/sdk/service/a/b;

    invoke-direct {v2, p2, p3, p0, p1}, Lcn/com/xy/sms/sdk/service/a/b;-><init>(Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "opinfo"

    invoke-static {p2}, Lcn/com/xy/sms/sdk/service/a/a;->a(Ljava/util/Map;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/net/util/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v2, Lcn/com/xy/sms/sdk/service/a/c;

    invoke-direct {v2, p2, p3, p0, p1}, Lcn/com/xy/sms/sdk/service/a/c;-><init>(Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "opanalysis"

    invoke-static {p2}, Lcn/com/xy/sms/sdk/service/a/a;->a(Ljava/util/Map;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
