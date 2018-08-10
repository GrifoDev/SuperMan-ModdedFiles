.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field private static final IDLE_THREAD_LIFE_TIME_IN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarStateHandler:Landroid/os/Handler;

.field private mCocktailBarStateThread:Landroid/os/HandlerThread;

.field protected mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field private final mLock:Ljava/lang/Object;

.field private final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field protected mWindowType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->quitHandlerThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    return-void
.end method

.method private createHandlerThreadLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueueMessageLocked(Landroid/os/Message;JZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->createHandlerThreadLocked()V

    if-eqz p4, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0, p2, p3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->updateThreadExpireTimeLocked(J)V

    :cond_1
    return-void
.end method

.method private findModeLock(I)Landroid/util/SparseBooleanArray;
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private hasQueuedMessageLocked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private quitHandlerThread()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;
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

.method private removeQueuedMessageLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateThreadExpireTimeLocked(J)V
    .locals 4

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[LockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CocktailBarWindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object v0
.end method

.method public getLockState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    return v0
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setLockState(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->setLockState(IZI)V

    return-void
.end method

.method public setLockState(IZI)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr v2, p1

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    goto :goto_0
.end method

.method public updateActivate(Z)V
    .locals 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x31

    iput v3, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updatePosition(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateVisibility(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
