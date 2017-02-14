.class public Lcn/com/xy/sms/sdk/net/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;

.field public static readTimeout:I

.field public static timeoutConnection:I


# instance fields
.field public callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field public cmd:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public hhd:Lcn/com/xy/sms/sdk/net/c;

.field public isCompress:Z

.field public isLogin:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x9c40

    sput v0, Lcn/com/xy/sms/sdk/net/a;->timeoutConnection:I

    const v0, 0x15f90

    sput v0, Lcn/com/xy/sms/sdk/net/a;->readTimeout:I

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    invoke-virtual/range {p0 .. p7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method public static getDeviceId(Z)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_2

    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDeviceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method protected static isAppChannel()Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getOnlineParseImpl(Z)Lcn/com/xy/sms/sdk/Iservice/OnlineParseInterface;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/OnlineParseInterface;->isAppChannel(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "BaseHttpRunnable isAppChannel"

    const-string/jumbo v1, "\u83b7\u53d6\u7b97\u6cd5\u5305\u5185\u7684\u662f\u5426\u4e3a\u5e94\u7528\u6e20\u9053\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logNetInfo(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getLogSdkDoAction()Lcn/com/xy/sms/sdk/util/j;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logNetInfo: "

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


# virtual methods
.method protected addHeadSign(Ljava/net/HttpURLConnection;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "x"

    invoke-static {}, Lcn/com/xy/sms/sdk/net/util/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/a;->isAppChannel()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string/jumbo v1, "token/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "p"

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/a;->getDeviceId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "s"

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/a;->getDeviceId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addHeadSign: "

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

.method public callBack(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "STATUS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " responseStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public callBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "STATUS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " responseStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getHttpURLConnection()Ljava/net/HttpURLConnection;
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/b;->b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    :goto_0
    sget v1, Lcn/com/xy/sms/sdk/net/a;->timeoutConnection:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcn/com/xy/sms/sdk/net/a;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/a;->hhd:Lcn/com/xy/sms/sdk/net/c;

    iget-boolean v2, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iget-object v3, p0, Lcn/com/xy/sms/sdk/net/a;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/com/xy/sms/sdk/net/a;->setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-nez v1, :cond_2

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/util/ParseManager;->ismUseNewDes()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string/jumbo v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nz"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HTTP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BaseHttpRunnable getHttpURLConnection error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "encrypt"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/a;->hhd:Lcn/com/xy/sms/sdk/net/c;

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-boolean p4, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-object p5, p0, Lcn/com/xy/sms/sdk/net/a;->cmd:Ljava/lang/String;

    iput-boolean p7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/a;->getHttpURLConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->getXyValue(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "url="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "content="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "xyvalue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "keyStr: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/net/util/g;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "URL:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "  code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_2

    const/4 v0, -0x8

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V

    :goto_1
    if-nez v1, :cond_9

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->compressGZip([B)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v5, v0

    iget-object v6, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    invoke-static {v6, v5}, Lcn/com/xy/sms/sdk/net/a;->logNetInfo(Ljava/lang/String;I)V

    int-to-long v6, v5

    const-wide/32 v8, 0x1900000

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_5

    const/16 v0, -0x9

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    :goto_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    :try_start_2
    iget-boolean v2, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-nez v2, :cond_6

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/g;->a([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "2 http error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/net/SocketTimeoutException;

    if-eq v0, v2, :cond_7

    const/4 v0, -0x7

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :cond_6
    :try_start_5
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_6
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BaseHttpRunnable run"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    if-nez v1, :cond_8

    :goto_6
    throw v0

    :cond_7
    const/4 v0, -0x6

    :try_start_7
    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "run: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    return-void

    :catch_5
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 3

    if-eqz p4, :cond_0

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "text/xml;UTF-8"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "app-key"

    sget-object v2, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "app-key-sign"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "compress"

    const-string/jumbo v1, "1"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "loginid"

    const-string/jumbo v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "recordState"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkversion"

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v0, "command"

    const-string/jumbo v1, "1"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/a;->addHeadSign(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "h-token"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "command"

    const-string/jumbo v1, "0"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "cmd"

    invoke-virtual {p4, v0, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
