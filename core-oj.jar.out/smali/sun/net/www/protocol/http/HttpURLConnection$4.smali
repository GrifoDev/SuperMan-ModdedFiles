.class final Lsun/net/www/protocol/http/HttpURLConnection$4;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$h1:Ljava/lang/String;

.field final synthetic val$h2:Ljava/lang/String;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h1:Ljava/lang/String;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h2:Ljava/lang/String;

    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h1:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$h2:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$4;->val$result:[Z

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    aput-boolean v5, v4, v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
