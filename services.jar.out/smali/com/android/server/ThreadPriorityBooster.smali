.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThreadPriorityBooster$1;,
        Lcom/android/server/ThreadPriorityBooster$PriorityState;
    }
.end annotation


# instance fields
.field private volatile mBoostToPriority:I

.field private final mLockGuardIndex:I

.field private final mThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThreadPriorityBooster$1;-><init>(Lcom/android/server/ThreadPriorityBooster;)V

    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    return-void
.end method


# virtual methods
.method public boost()V
    .locals 4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    iget v3, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v3, :cond_0

    iput v0, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    if-le v0, v3, :cond_0

    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_0
    iget v3, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    iget v2, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iget v2, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    if-eq v2, v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iget v3, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_0
    return-void
.end method

.method protected setBoostToPriority(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    iget-object v3, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iget v3, v1, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-eqz v3, :cond_0

    if-eq v0, p1, :cond_0

    invoke-static {v2, p1}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_0
    return-void
.end method
