.class Lsun/net/www/protocol/http/HttpURLConnection$3;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/ResponseCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$3;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$3;->run()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/ResponseCache;
    .locals 1

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method
