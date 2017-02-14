.class public final Lcn/com/xy/sms/sdk/util/m;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LastMenuActionCountActionUpdate"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-string/jumbo v1, "yyyyMMdd"

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "LastMenuActionCountActionUpdate"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/util/DateUtils;->addDays(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMdd"

    invoke-static {v3, v0, v1}, Lcn/com/xy/sms/sdk/util/DateUtils;->compareDateString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    invoke-static {v4}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/E;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcn/com/xy/sms/sdk/util/n;

    invoke-direct {v2, v3}, Lcn/com/xy/sms/sdk/util/n;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "menuclick"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MenuActionCountActionUatil: "

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

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "LastMenuActionCountActionUpdate"

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
