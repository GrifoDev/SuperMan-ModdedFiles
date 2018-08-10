.class Lorg/apache/http/impl/client/IdleConnectionEvictor$1;
.super Ljava/lang/Object;
.source "IdleConnectionEvictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

.field final synthetic val$connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/IdleConnectionEvictor;Lorg/apache/http/conn/HttpClientConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    iput-object p2, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-static {v1}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->access$000(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    iget-object v1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-static {v1}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->access$100(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-static {v3}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->access$100(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;->this$0:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-static {v1, v0}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->access$202(Lorg/apache/http/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
