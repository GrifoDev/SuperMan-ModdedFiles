.class public final Lcn/com/xy/sms/sdk/service/c/g;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final a:Ljava/lang/Object;

.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/service/c/g;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "simIndex"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    invoke-static {p0, v4, p1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v8, ""

    if-nez v1, :cond_5

    if-nez p3, :cond_6

    :cond_0
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    :goto_1
    move-object v0, v8

    :goto_2
    if-nez p4, :cond_7

    :goto_3
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "QUERY_ONLINE"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    if-nez p4, :cond_3

    :goto_5
    const-string/jumbo v0, "-1"

    return-object v0

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v9

    const-string/jumbo v1, "-1"

    aput-object v1, v0, v10

    invoke-interface {p4, v0}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->PubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "SUPPORT_NET_QUERY"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PubInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryPublicInfo error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p4, :cond_9

    :goto_6
    const-string/jumbo v0, ""

    return-object v0

    :cond_7
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p4, v1}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/service/c/l;

    invoke-direct {v2, v4, p2}, Lcn/com/xy/sms/sdk/service/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_9
    new-array v0, v10, [Ljava/lang/Object;

    const-string/jumbo v1, ""

    aput-object v1, v0, v9

    invoke-interface {p4, v0}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "simIndex"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->c(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prev cnum:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " simIccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " areaCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " simIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "next cnum:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " simIccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " areaCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " numType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " phoneNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " simIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-nez p3, :cond_4

    :goto_1
    move-object v2, p0

    move v4, p1

    move-object v6, p2

    move-object v7, v0

    move v8, v1

    move-object v9, p4

    invoke-static/range {v2 .. v9}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    if-nez p4, :cond_2

    :goto_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    invoke-interface {p4, v0}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "EXCLUDE_CN"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_6

    :goto_3
    if-nez p4, :cond_7

    :goto_4
    new-instance v1, Lcn/com/xy/sms/sdk/service/c/k;

    invoke-direct {v1, v3, p2}, Lcn/com/xy/sms/sdk/service/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-object v0

    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p4, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    const-string/jumbo v0, "title_num"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "scenetype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseSmsToClassify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a()V
    .locals 11

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/e;->c()Lcn/com/xy/sms/sdk/db/entity/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " menuInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/e;->c()Lcn/com/xy/sms/sdk/db/entity/g;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "menuMain"

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lcn/com/xy/sms/sdk/db/entity/g;->e:J

    const/4 v3, 0x5

    const-wide/32 v8, 0xa4cb800

    invoke-static {v3, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    move v0, v1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {v2, v10, v1, v10}, Lcn/com/xy/sms/sdk/db/e;->a(Lcn/com/xy/sms/sdk/db/entity/g;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZLjava/util/Map;)V

    return-void

    :cond_5
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "AUTO_UPDATE_DATA"

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/e;->b(Lcn/com/xy/sms/sdk/db/entity/g;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->e()V

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkPubInfoUpdate: "

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

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 9

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QUERY_ONLINE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v8, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->pubInfoPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/m;

    move v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/c/m;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->d()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6279\u91cf\u66f4\u65b0 needUpdateList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcn/com/xy/sms/sdk/service/c/i;

    invoke-direct {v4, p0, p1, p2}, Lcn/com/xy/sms/sdk/service/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6279\u91cf\u66f4\u65b0\u5f00\u59cb\u6267\u884c needUpdateList\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "1"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcn/com/xy/sms/sdk/service/c/g;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/db/e;->c()Lcn/com/xy/sms/sdk/db/entity/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " menuInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/e;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void

    :cond_0
    const-string/jumbo v0, "menuMain"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/e;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/w;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/w;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/com/xy/sms/sdk/db/entity/w;->a:Ljava/lang/String;

    const-string/jumbo v5, "1"

    iput-object v5, v0, Lcn/com/xy/sms/sdk/db/entity/w;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->a(Lcn/com/xy/sms/sdk/db/entity/w;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    :goto_2
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/w;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/w;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/w;->a:Ljava/lang/String;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/w;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->a(Lcn/com/xy/sms/sdk/db/entity/w;)V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "simIndex"

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->c(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "id"

    invoke-static {p3, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "QUERY_ONLINE"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, p1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pubInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, ""

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->PubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/g;->a()V

    :goto_1
    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/service/c/h;

    invoke-direct {v2, v3, p2}, Lcn/com/xy/sms/sdk/service/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/g;->a()V

    :goto_2
    move-object v0, v9

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/g;->a()V

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/sdk/service/c/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/j;

    const-string/jumbo v1, "updatePubInfo-Thread"

    invoke-direct {v0, v1, p0, p1}, Lcn/com/xy/sms/sdk/service/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/service/c/j;->start()V

    return-void

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    invoke-static {v7, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/i;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "tb_netquery_time"

    const-string/jumbo v8, "request_time < ? and request_time > 0 "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v3, v2, v8, v9}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-gt v1, v6, :cond_2

    :goto_2
    invoke-interface {v7, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "1"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetQueryTimeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearUpdateUnKnowNumTime error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QUERY_ONLINE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/service/c/l;

    invoke-direct {v1, p0, p1}, Lcn/com/xy/sms/sdk/service/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    invoke-static {v5, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/i;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "tb_netquery_time"

    const-string/jumbo v5, "request_time < ? and request_time > 0 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v3, v2, v5, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-gt v1, v6, :cond_2

    :goto_2
    invoke-interface {v7, v10, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "1"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetQueryTimeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearUpdateUnKnowNumTime error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->d()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6279\u91cf\u66f4\u65b0 needUpdateList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcn/com/xy/sms/sdk/service/c/i;

    invoke-direct {v4, p0, p1, p2}, Lcn/com/xy/sms/sdk/service/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6279\u91cf\u66f4\u65b0\u5f00\u59cb\u6267\u884c needUpdateList\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "1"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void

    :cond_0
    sget-object v1, Lcn/com/xy/sms/sdk/service/c/g;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
