.class final Lsun/net/www/protocol/https/HttpsClient$1;
.super Ljava/lang/Object;
.source "HttpsClient.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$phost:Ljava/lang/String;

.field final synthetic val$pport:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient$1;->val$phost:Ljava/lang/String;

    iput p2, p0, Lsun/net/www/protocol/https/HttpsClient$1;->val$pport:I

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

    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient$1;->run()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/InetSocketAddress;
    .locals 3

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lsun/net/www/protocol/https/HttpsClient$1;->val$phost:Ljava/lang/String;

    iget v2, p0, Lsun/net/www/protocol/https/HttpsClient$1;->val$pport:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
