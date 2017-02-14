.class public Lcn/com/xy/sms/sdk/net/NetUtil;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static APPVERSION:Ljava/lang/String; = null

.field public static final BIZPORT_DOWN_URL:Ljava/lang/String; = "http://down2.bizport.cn/publicnum/upload/"

.field public static final CheckResourseRequest:Ljava/lang/String; = "checkResourseRequest"

.field public static final HTTP_ACCESS_FALIE:I = -0x8

.field public static final HTTP_CONN_OUTTIME:I = -0x6

.field public static final HTTP_PACKAGE_TO_BIG:I = -0x9

.field public static final HTTP_THROWS_EXCEPTION:I = -0x7

.field public static POPUP_SERVER_URL_HTTPS:Ljava/lang/String; = null

.field public static PUBINFO_SERVER_URL_HTTPS:Ljava/lang/String; = null

.field public static final QuerySceneRequest:Ljava/lang/String; = "queryscene"

.field public static final REQ_QUERY_CHECI:Ljava/lang/String; = "checi"

.field public static final REQ_QUERY_LOCATION:Ljava/lang/String; = "location"

.field public static final REQ_QUERY_MENUINFO:Ljava/lang/String; = "menuinfo"

.field public static final REQ_QUERY_OPERATOR:Ljava/lang/String; = "opinfo"

.field public static final REQ_QUERY_OPERATOR_MSG:Ljava/lang/String; = "opanalysis"

.field public static final REQ_QUERY_PUBINFO:Ljava/lang/String; = "pubinfo"

.field public static final REQ_QUERY_TOEKN:Ljava/lang/String; = "token"

.field public static STATSERVICE_URL:Ljava/lang/String; = null

.field public static final URL_MENU_CLICKED:Ljava/lang/String; = "menuclick"

.field public static final URL_PUB_NUMBER:Ljava/lang/String; = "pubnumber"

.field public static final URL_VALIDITY:Ljava/lang/String; = "URLValidity"

.field public static final UpdatePublicInfoRequest:Ljava/lang/String; = "updatepublic"

.field public static final UpdateRecognitionJarRequest:Ljava/lang/String; = "updatejar"

.field private static a:Ljava/lang/String;

.field private static b:I

.field public static pool:Ljava/util/concurrent/ExecutorService;

.field public static prex:Ljava/lang/String;

.field public static publicInfoServerUrl:Ljava/lang/String;

.field public static serverUrl:Ljava/lang/String;

.field public static serverUrl2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://scene"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn:8981/statservice/stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->STATSERVICE_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://pubserver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn:9998/pubNumService/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://smssdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn/popupservice/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl:Ljava/lang/String;

    const-string/jumbo v0, "http://down1.bizport.cn"

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->prex:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://pubapi"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn:9443/pubNumService/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->PUBINFO_SERVER_URL_HTTPS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://sdkapi"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn:8943/popupservice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->POPUP_SERVER_URL_HTTPS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://olapi"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bizport.cn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->publicInfoServerUrl:Ljava/lang/String;

    const-string/jumbo v0, "201602262024"

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->pool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput v0, Lcn/com/xy/sms/sdk/net/NetUtil;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QueryNewTokenRequest(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/g;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/g;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/util/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "token"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QueryTokenRequest: "

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

.method public static QueryTokenRequest(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/f;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/f;-><init>()V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "990005"

    const-string/jumbo v5, "token"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeAllNetHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QueryNewTokenRequest: "

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

.method public static checkAccessNetWork()Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    return v0
.end method

.method public static checkAccessNetWork(I)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SUPPORT_NETWORK_TYPE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq p0, v4, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    return v3

    :cond_0
    return v2

    :cond_1
    if-eq v0, v4, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static checkAccessNetWork(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "extend="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    return v0

    :cond_1
    return v6

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "SUPPORT_NETWORK_TYPE"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    :cond_3
    :try_start_2
    const-string/jumbo v3, "HTTP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4e0d\u652f\u6301\u7f51\u7edc\u8fde,\u6216\u53ea\u652f\u6301wifi: type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " netType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v3, v0, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :cond_4
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    :try_start_4
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    return v0

    :cond_5
    if-eq v2, v1, :cond_6

    :goto_1
    return v1

    :cond_6
    if-eq v0, v1, :cond_3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static executeAllNetHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/lang/String;Z)V
    .locals 8

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CUSTOM_PUBLIC_SERVER_URL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_1

    :goto_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v0, Lcn/com/xy/sms/sdk/net/j;

    const-string/jumbo v3, ""

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/Boolean;)V

    if-nez p3, :cond_3

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/j;->run()V

    return-void

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p5, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPubNumServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeHttpPublicRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/com/xy/sms/sdk/net/j;

    const-string/jumbo v4, "990005"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Lcn/com/xy/sms/sdk/net/i;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/i;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    if-nez p5, :cond_0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/i;->run()V

    return-void

    :cond_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeHttpRequest(ILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcn/com/xy/sms/sdk/net/i;

    const/4 v1, -0x1

    const/4 v5, 0x1

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/i;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    if-nez p5, :cond_0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/i;->run()V

    return-void

    :cond_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeLoginBeforeHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    .locals 8

    new-instance v0, Lcn/com/xy/sms/sdk/net/a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            "ZZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CUSTOM_PUBINFO_SERVER_URL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/util/Map;)V

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->run()V

    return-void

    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPublicInfoServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executePubNumServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 8

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CUSTOM_PUBLIC_SERVER_URL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_0

    :goto_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v0, Lcn/com/xy/sms/sdk/net/j;

    const-string/jumbo v3, ""

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/Boolean;)V

    if-nez p4, :cond_2

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/j;->run()V

    return-void

    :cond_0
    const-string/jumbo p6, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPubNumServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getPopupServiceUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isUseHttps()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->POPUP_SERVER_URL_HTTPS:Ljava/lang/String;

    return-object v0
.end method

.method public static getPubNumServiceUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isUseHttps()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl2:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->PUBINFO_SERVER_URL_HTTPS:Ljava/lang/String;

    return-object v0
.end method

.method public static getPublicInfoServiceUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->publicInfoServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUrlWithPara(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static hasNewToken(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEWHTTPTOKEN"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static isEnhance()Z
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smartsms_enhance"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "VMhlWdEwVNEW_LENOVO"

    sget-object v2, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "1w36SBLwVNEW_ZTE"

    sget-object v2, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-static {v3}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUseHttps()Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget v0, Lcn/com/xy/sms/sdk/net/NetUtil;->b:I

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "3GdfMSKwHUAWEI"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "5Mj22a4wHUAWEICARD"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "J8KeTyOROASamsungReminder"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "SAMBANKVwIDAQAB"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "SAMCLASSFIYVwIDAQAB"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "5xKI47wSAMALL"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "XYTEST"

    aput-object v3, v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_3

    aget-object v3, v2, v0

    sget-object v4, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcn/com/xy/sms/sdk/net/NetUtil;->b:I

    if-eq v0, v5, :cond_1

    return v1

    :cond_1
    return v5

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lcn/com/xy/sms/sdk/net/NetUtil;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isUseHttps: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    sput v6, Lcn/com/xy/sms/sdk/net/NetUtil;->b:I

    return v1
.end method

.method public static requestNewTokenIfNeed(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEWHTTPTOKEN"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryNewTokenRequest(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static requestNewTokenMust(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryNewTokenRequest(Ljava/util/Map;)V

    return-void
.end method

.method public static requestTokenIfNeed(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "HTTPTOKEN"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryTokenRequest(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    goto :goto_1
.end method
