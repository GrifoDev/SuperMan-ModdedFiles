.class public Lcom/samsung/android/server/virtualspace/VSSession;
.super Lcom/samsung/android/multiscreen/virtualspace/IVSSession$Stub;
.source "VSSession.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mClient:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDm:Landroid/hardware/display/DisplayManager;

.field private mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private mMainDisplayRedirectId:I

.field private mMainMetrics:Landroid/util/DisplayMetrics;

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManager;

.field private final mParentActivity:Landroid/os/IBinder;

.field private final mScreens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/virtualspace/IVSSession$Stub;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mParentActivity:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v1, v1, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    .locals 8

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v7

    :cond_0
    if-le p1, p2, :cond_1

    move v6, p1

    move p1, p2

    move p2, v6

    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSScreen;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0

    return-object v7

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getMainMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method synthetic -com_samsung_android_server_virtualspace_VSSession_lambda$1()V
    .locals 2

    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->close()V

    return-void
.end method

.method addScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method changeScreenId(Lcom/samsung/android/server/virtualspace/VSScreen;II)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "VSSession.close()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method closeTask()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionClosing(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v4

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionClosed(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iput-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z

    return-void
.end method

.method public createScreen(I)Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;
    .locals 6

    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VSSession.createScreen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->getMainMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManager;->mIm:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/input/InputManagerService;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getClient()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    return-object v0
.end method

.method public getClientDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    return v0
.end method

.method public getClientPid()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientPid:I

    return v0
.end method

.method getManager()Lcom/samsung/android/server/virtualspace/VSManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    return-object v0
.end method

.method getParentActivity()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mParentActivity:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPriority(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getPriority()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisplayAdded(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession.onDisplayAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onDisplayChanged(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "VSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VSSession.onDisplayChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDisplayRemoved(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "VSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VSSession.onDisplayRemoved("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onTopTaskUpdated(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onTopTaskUpdated(I)V

    :cond_0
    return-void
.end method

.method public onUpdatedAppOrientation(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onUpdatedAppOrientation(I)V

    :cond_0
    return-void
.end method

.method declared-synchronized redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .locals 4

    const/4 v3, -0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "redirectMainDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    :cond_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "The main display can\'t be redirected if the client is not started in a VS container"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    if-ne v0, v3, :cond_4

    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "screen is not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSManager;->hideAllMainWindows(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeScreen(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(I)V

    return-void
.end method

.method declared-synchronized unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
