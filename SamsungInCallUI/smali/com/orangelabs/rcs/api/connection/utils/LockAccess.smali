.class public Lcom/orangelabs/rcs/api/connection/utils/LockAccess;
.super Ljava/lang/Object;
.source "LockAccess.java"


# instance fields
.field locker:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/orangelabs/rcs/api/connection/utils/LockAccess;->locker:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/utils/LockAccess;->locker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public tryLock()Z
    .locals 3

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/utils/LockAccess;->locker:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method
