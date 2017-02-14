.class Lsun/net/www/http/KeepAliveCache$1;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/http/KeepAliveCache;

.field final synthetic val$cache:Lsun/net/www/http/KeepAliveCache;


# direct methods
.method constructor <init>(Lsun/net/www/http/KeepAliveCache;Lsun/net/www/http/KeepAliveCache;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    iput-object p2, p0, Lsun/net/www/http/KeepAliveCache$1;->val$cache:Lsun/net/www/http/KeepAliveCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCache$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lsun/net/www/http/KeepAliveCache$1;->val$cache:Lsun/net/www/http/KeepAliveCache;

    const-string/jumbo v5, "Keep-Alive-Timer"

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lsun/net/www/http/KeepAliveCache;->-set0(Lsun/net/www/http/KeepAliveCache;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-object v6
.end method
