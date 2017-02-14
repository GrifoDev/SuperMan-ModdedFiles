.class Lsun/net/www/protocol/http/HttpURLConnection$7;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;

.field final synthetic val$finalHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$7;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$7;->val$finalHost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$7;->run()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$7;->val$finalHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
