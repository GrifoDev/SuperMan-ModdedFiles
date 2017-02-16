.class Lsun/security/ssl/Handshaker$DelegatedTask;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelegatedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private pea:Ljava/security/PrivilegedExceptionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedExceptionAction",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/security/ssl/Handshaker;


# direct methods
.method constructor <init>(Lsun/security/ssl/Handshaker;Ljava/security/PrivilegedExceptionAction;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/ssl/Handshaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1292
    .local p0, "this":Lsun/security/ssl/Handshaker$DelegatedTask;, "Lsun/security/ssl/Handshaker$DelegatedTask<TE;>;"
    .local p2, "pea":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TE;>;"
    iput-object p1, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->pea:Ljava/security/PrivilegedExceptionAction;

    .line 1292
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1297
    .local p0, "this":Lsun/security/ssl/Handshaker$DelegatedTask;, "Lsun/security/ssl/Handshaker$DelegatedTask<TE;>;"
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    iget-object v3, v2, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    monitor-enter v3

    .line 1299
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->pea:Ljava/security/PrivilegedExceptionAction;

    iget-object v4, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    iget-object v4, v4, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLEngineImpl;->getAcc()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    :goto_0
    :try_start_1
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lsun/security/ssl/Handshaker;->-set0(Lsun/security/ssl/Handshaker;Lsun/security/ssl/Handshaker$DelegatedTask;)Lsun/security/ssl/Handshaker$DelegatedTask;

    .line 1306
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lsun/security/ssl/Handshaker;->-set1(Lsun/security/ssl/Handshaker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1296
    return-void

    .line 1302
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "rte":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    invoke-static {v2, v1}, Lsun/security/ssl/Handshaker;->-set2(Lsun/security/ssl/Handshaker;Ljava/lang/Exception;)Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1297
    .end local v1    # "rte":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1300
    :catch_1
    move-exception v0

    .line 1301
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_3
    iget-object v2, p0, Lsun/security/ssl/Handshaker$DelegatedTask;->this$0:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v2, v4}, Lsun/security/ssl/Handshaker;->-set2(Lsun/security/ssl/Handshaker;Ljava/lang/Exception;)Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
