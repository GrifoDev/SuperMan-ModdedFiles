.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 7

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v1, :cond_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v1

    const/16 v4, 0x32

    if-lt v1, v4, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Exceeded maximum number of wifi locks"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_5
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :cond_3
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v5

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    :goto_0
    sub-int v1, v5, v1

    invoke-static {v4, v1}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isHeld()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public release()V
    .locals 6

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v5

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-lez v1, :cond_4

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    :goto_1
    sub-int v1, v5, v1

    invoke-static {v4, v1}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    :cond_2
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-gez v1, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v3

    throw v1

    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v3

    throw v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_0
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    monitor-exit v2

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 6

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v4, v5}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string/jumbo v1, "held; "

    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "not refcounted"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
