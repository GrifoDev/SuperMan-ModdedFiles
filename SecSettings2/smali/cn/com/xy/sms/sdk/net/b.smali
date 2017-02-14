.class public final Lcn/com/xy/sms/sdk/net/b;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/net/b;->a(Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/b;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/b;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {v2, v0, p1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createHttpsURLConnectionAndConnect: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private a(Ljava/net/URL;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V

    goto :goto_0
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;I)V
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_2

    :goto_1
    :try_start_0
    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/d;->a(I)Lcn/com/xy/sms/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/d;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/d;->a(I)Lcn/com/xy/sms/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/b;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/b;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {v2, v0, v1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
