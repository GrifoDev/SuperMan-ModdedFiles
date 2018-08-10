.class public Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->scheduleNextLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method scheduleNextLocked()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
