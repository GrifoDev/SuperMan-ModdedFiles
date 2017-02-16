.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1377
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1380
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/scontext/SContextEvent;

    .line 1382
    .local v1, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    if-eqz v1, :cond_0

    .line 1383
    iget-object v0, v1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1384
    .local v0, "scontext":Landroid/hardware/scontext/SContext;
    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    .line 1386
    .local v2, "type":I
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get0(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1387
    const-string/jumbo v3, "SContextManager"

    const-string/jumbo v4, "Data is received so remove listener related HistoryData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    .line 1389
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 1379
    .end local v0    # "scontext":Landroid/hardware/scontext/SContext;
    .end local v1    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 1391
    .restart local v0    # "scontext":Landroid/hardware/scontext/SContext;
    .restart local v1    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .restart local v2    # "type":I
    :cond_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3, v1}, Landroid/hardware/scontext/SContextManager;->-wrap0(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1392
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-get0(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1395
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-get0(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1396
    const-string/jumbo v3, "SContextManager"

    const-string/jumbo v4, "Listener is already registered and history data is sent to Application"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-get0(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0
.end method
