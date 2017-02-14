.class final Lsun/net/www/http/KeepAliveStream$1;
.super Ljava/lang/Object;
.source "KeepAliveStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/http/KeepAliveStream;->queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveStream$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

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
    new-instance v2, Ljava/lang/Thread;

    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get1()Lsun/net/www/http/KeepAliveStreamCleaner;

    move-result-object v3

    const-string/jumbo v4, "Keep-Alive-SocketCleaner"

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2}, Lsun/net/www/http/KeepAliveStream;->-set0(Ljava/lang/Thread;)Ljava/lang/Thread;

    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-object v5
.end method
