.class Lsun/net/www/http/HttpClient$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/http/HttpClient;

.field final synthetic val$server:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lsun/net/www/http/HttpClient;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/http/HttpClient$1;->this$0:Lsun/net/www/http/HttpClient;

    iput-object p2, p0, Lsun/net/www/http/HttpClient$1;->val$server:Ljava/net/InetSocketAddress;

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

    invoke-virtual {p0}, Lsun/net/www/http/HttpClient$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/http/HttpClient$1;->this$0:Lsun/net/www/http/HttpClient;

    iget-object v1, p0, Lsun/net/www/http/HttpClient$1;->val$server:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/http/HttpClient$1;->val$server:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/net/www/http/HttpClient;->openServer(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method
