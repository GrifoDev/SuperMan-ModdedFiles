.class public Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsSucceed:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return-void
.end method

.method private static getAuthorizationValue()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "aHgq8b2NBs:"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.sys.kddi_sim_lock"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "aagq3b1NBs:"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserAgentValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "KD-14/0001"

    return-object v0
.end method

.method private static processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9

    const/4 v8, 0x0

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "process return body part()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "3"

    const-string/jumbo v7, "persist.sys.kddi_sim_lock"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "no response body part available property is 3"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "message type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "entire message length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "server status code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "server text length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v5, [B

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "server text : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v0, -0x1

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v6, v6, -0x4

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v6, v5

    new-array v2, v6, [B

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "new sim lock policy file length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->copyRemainingByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6

    :cond_1
    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "no response body part available"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 8

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "read input stream"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/16 v5, 0x1000

    new-array v0, v5, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v5

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "byte buffer read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method


# virtual methods
.method public isSucceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return v0
.end method

.method public post(Landroid/content/Context;)Ljava/nio/ByteBuffer;
    .locals 13

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "connect()"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string/jumbo v10, "https://slcs.device.kddi.ne.jp/SIM/servlet/SimServlet"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string/jumbo v10, "Authorization"

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getAuthorizationValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "User-Agent"

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getUserAgentValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/octet-stream"

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "write request body"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->build(Landroid/content/Context;)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "response code : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", message : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xc8

    if-ne v5, v10, :cond_2

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "check input stream"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "simlock policy buffer capacity : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    :cond_0
    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "is succeed to get simlock policy buffer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    :goto_1
    return-object v7

    :cond_2
    :try_start_2
    sget-object v10, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "check error stream"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2
.end method
