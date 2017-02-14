.class final Lcn/com/xy/sms/sdk/net/e;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/net/d;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/net/d;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/e;->a:Lcn/com/xy/sms/sdk/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "Https"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hostName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/e;->a:Lcn/com/xy/sms/sdk/net/d;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/d;->a(Lcn/com/xy/sms/sdk/net/d;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0

    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "duoqu.in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const-string/jumbo v0, "bizport.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_4
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method
