.class public final Lcn/com/xy/sms/sdk/net/j;
.super Lcn/com/xy/sms/sdk/net/a;
.source "Unknown"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "HTTP"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    sput-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/j;->getHttpURLConnection()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->getXyValue(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " url="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/j;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "isCompress:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/j;->isCompress:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " content="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/j;->content:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "xyvalue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "keyStr: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/j;->content:Ljava/lang/String;

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/net/util/g;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/j;->isCompress:Z

    if-nez v5, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "URL:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/j;->url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "  code="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/4 v0, -0x8

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/j;->callBack(ILjava/lang/String;)V

    :goto_1
    if-nez v2, :cond_b

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "key="

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " value ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/net/SocketTimeoutException;

    if-eq v0, v2, :cond_9

    const/4 v0, -0x7

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/j;->callBack(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :cond_3
    :try_start_4
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->compressGZip([B)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v1, v0

    iget-object v6, p0, Lcn/com/xy/sms/sdk/net/j;->content:Ljava/lang/String;

    invoke-static {v6, v1}, Lcn/com/xy/sms/sdk/net/j;->logNetInfo(Ljava/lang/String;I)V

    int-to-long v6, v1

    const-wide/32 v8, 0x1900000

    cmp-long v1, v6, v8

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_7

    const/16 v0, -0x9

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/j;->callBack(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_6

    :goto_7
    return-void

    :cond_5
    move v1, v3

    goto :goto_6

    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_7
    :try_start_6
    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/j;->isCompress:Z

    if-nez v1, :cond_8

    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/net/util/g;->a([B[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/j;->callBack(ILjava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_9
    if-nez v2, :cond_a

    :goto_a
    throw v0

    :cond_8
    :try_start_7
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto :goto_8

    :catch_2
    move-exception v1

    :try_start_8
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "XyHttpRunnable run"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :cond_9
    const/4 v0, -0x6

    :try_start_9
    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/j;->callBack(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_3
    move-exception v0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_a

    :cond_b
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    return-void

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_4
.end method

.method public final setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 4

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "text/xml;UTF-8"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/j;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "HTTPTOKEN"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "1"

    invoke-virtual {p4, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    sget-object v1, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/j;->addHeadSign(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    const-string/jumbo v0, "cnum"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/j;->d:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "2"

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
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

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "cmd"

    invoke-virtual {p4, v0, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
