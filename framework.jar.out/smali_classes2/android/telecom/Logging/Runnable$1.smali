.class Landroid/telecom/Logging/Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Logging/Runnable;


# direct methods
.method constructor <init>(Landroid/telecom/Logging/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->-get0(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->-get1(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v0

    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->-get2(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-virtual {v0}, Landroid/telecom/Logging/Runnable;->loggedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->-get1(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/telecom/Logging/Runnable;->-set0(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->-get1(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/telecom/Logging/Runnable;->-set0(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
