.class public Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;
.super Lcn/com/xy/sms/sdk/net/a;
.source "Unknown"


# static fields
.field public static final ERROR_CODE_PARE_ERR:Ljava/lang/String; = "2"

.field public static final ERROR_CODE_SERVICE_ERR:Ljava/lang/String; = "3"

.field public static final ERROR_CODE_TOKEN_FAILED:Ljava/lang/String; = "1"

.field public static RSA_PRV_KEY:Ljava/lang/String; = null

.field private static a:Ljava/lang/String; = "HTTP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v5, ""

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->getHttpURLConnection()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " url="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " content="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " isCompress="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isCompress:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isCompress:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isLogin:Z

    if-nez v5, :cond_5

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "AESKEY"

    invoke-static {v3, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "xyvalue"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "keyStr: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/net/util/i;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/net/util/a;->a([B[B)[B

    move-result-object v0

    :goto_1
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "URL:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "  code="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_e

    const/4 v0, -0x8

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V

    :cond_1
    :goto_2
    if-nez v2, :cond_12

    :cond_2
    :goto_3
    return-void

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "key="

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " value ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "run: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/net/SocketTimeoutException;

    if-eq v0, v2, :cond_10

    const/4 v0, -0x7

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->compressGZip([B)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    sget-object v5, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/net/util/i;->a([BLjava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string/jumbo v0, "XY-ERR-CODE"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/io/InputStream;)[B

    move-result-object v5

    array-length v0, v5

    iget-object v6, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    invoke-static {v6, v0}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->logNetInfo(Ljava/lang/String;I)V

    int-to-long v6, v0

    const-wide/32 v8, 0x1900000

    cmp-long v0, v6, v8

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_b

    const/16 v0, -0x9

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V

    if-nez v2, :cond_a

    :goto_8
    return-void

    :cond_7
    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_8

    :goto_9
    return-void

    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_9
    move v0, v4

    goto :goto_7

    :cond_a
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_b
    :try_start_7
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isLogin:Z

    if-nez v0, :cond_c

    invoke-static {v3}, Lcn/com/xy/sms/sdk/net/util/i;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v5, v0}, Lcn/com/xy/sms/sdk/net/util/a;->b([B[B)[B

    move-result-object v0

    :goto_a
    iget-boolean v3, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isCompress:Z

    if-nez v3, :cond_d

    :goto_b
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_c
    if-nez v2, :cond_11

    :goto_d
    throw v0

    :cond_c
    :try_start_8
    sget-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-static {v5, v0}, Lcn/com/xy/sms/sdk/net/util/i;->b([BLjava/lang/String;)[B
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto :goto_a

    :cond_d
    :try_start_9
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    goto :goto_b

    :catch_3
    move-exception v3

    :try_start_a
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NewXyHttpRunnable run"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_e
    const-string/jumbo v0, "XY-ERR-CODE"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "token refresh"

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v2, :cond_f

    :goto_e
    return-void

    :cond_f
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    return-void

    :catch_4
    move-exception v0

    goto :goto_e

    :cond_10
    const/4 v0, -0x6

    :try_start_c
    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :catch_5
    move-exception v0

    return-void

    :cond_11
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_d

    :cond_12
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    return-void

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5
.end method

.method public setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 3

    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "NEWHTTPTOKEN"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/constant/Constant;->self_key:Ljava/lang/String;

    sget-object v2, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "appkey"

    sget-object v2, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v1, "app-key-sign"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "recordState"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkversion"

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->addHeadSign(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-virtual {p4, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "appkey"

    const-string/jumbo v2, "XYSELF"

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
