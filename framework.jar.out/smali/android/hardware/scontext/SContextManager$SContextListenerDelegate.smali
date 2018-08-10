.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Ljava/lang/Object;
.source "SContextManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsHistoryData:Z

.field private final mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static synthetic -get0(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method constructor <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
    .locals 2

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    iput-boolean p4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method


# virtual methods
.method public getListener()Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v2}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    invoke-virtual {v2, v3, v0}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
