.class public Lcom/android/systemui/cover/SViewCoverService;
.super Landroid/app/Service;
.source "SViewCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/SViewCoverService$1;,
        Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;
    }
.end annotation


# instance fields
.field private mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/cover/SViewCoverService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/cover/SViewCoverService;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/cover/SViewCoverService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->retryLastCoverStateUpdate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/cover/SViewCoverService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/SViewCoverService$1;-><init>(Lcom/android/systemui/cover/SViewCoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-void
.end method

.method private getStatusBar()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/cover/SViewCoverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_0

    const-string/jumbo v1, "CoverUI"

    const-string/jumbo v2, "app==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CoverUI"

    const-string/jumbo v2, "onCreate() - app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-nez v1, :cond_1

    const-string/jumbo v1, "CoverUI"

    const-string/jumbo v2, "onCreate() - mBaseStatusBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private registerLocalBroadcastReceiver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CoverUI"

    const-string/jumbo v3, "registerLocalBroadcastReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;-><init>(Lcom/android/systemui/cover/SViewCoverService;Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.systemui.cover.RETRY_GET_STATUS_BAR"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private retryLastCoverStateUpdate()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-nez v0, :cond_0

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v2, "retryLastCoverStateUpdate, get status bar"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v2, "retryLastCoverStateUpdate"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->unregisterLocalBroadcastReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v2, "CoverUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryLastCoverStateUpdate, statusBar: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " coverState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "ok"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ok"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private unregisterLocalBroadcastReceiver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverUI"

    const-string/jumbo v2, "unregisterLocalBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/systemui/cover/SViewCoverService;->mLocalCoverReceiver:Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "SViewCoverService onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "SViewCoverService onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->registerLocalBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->unregisterLocalBroadcastReceiver()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6

    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v4, "SViewCoverService onUnbind() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->unregisterLocalBroadcastReceiver()V

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/samsung/android/cover/CoverState;->attached:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v3

    return v3

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v5, "RemoteException in getCoverState: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
