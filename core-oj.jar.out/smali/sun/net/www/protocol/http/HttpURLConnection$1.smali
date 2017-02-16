.class final Lsun/net/www/protocol/http/HttpURLConnection$1;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/PasswordAuthentication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$authType:Ljava/net/Authenticator$RequestorType;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$prompt:Ljava/lang/String;

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$scheme:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Authenticator$RequestorType;)V
    .locals 0
    .param p1, "val$host"    # Ljava/lang/String;
    .param p2, "val$url"    # Ljava/net/URL;
    .param p3, "val$addr"    # Ljava/net/InetAddress;
    .param p4, "val$port"    # I
    .param p5, "val$protocol"    # Ljava/lang/String;
    .param p6, "val$prompt"    # Ljava/lang/String;
    .param p7, "val$scheme"    # Ljava/lang/String;
    .param p8, "val$authType"    # Ljava/net/Authenticator$RequestorType;

    .prologue
    .line 391
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$addr:Ljava/net/InetAddress;

    iput p4, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$port:I

    iput-object p5, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$protocol:Ljava/lang/String;

    iput-object p6, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$prompt:Ljava/lang/String;

    iput-object p7, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$scheme:Ljava/lang/String;

    iput-object p8, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$authType:Ljava/net/Authenticator$RequestorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$1;->run()Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/PasswordAuthentication;
    .locals 10

    .prologue
    const/16 v9, 0x12c

    .line 393
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    invoke-virtual {v0, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requesting Authentication: host ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$addr:Ljava/net/InetAddress;

    iget v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$port:I

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$protocol:Ljava/lang/String;

    .line 398
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$prompt:Ljava/lang/String;

    iget-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$scheme:Ljava/lang/String;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$authType:Ljava/net/Authenticator$RequestorType;

    .line 396
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    .line 399
    .local v8, "pass":Ljava/net/PasswordAuthentication;
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    invoke-virtual {v0, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Authentication returned: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 402
    :cond_1
    return-object v8

    .line 400
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
