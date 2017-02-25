.class public Lcom/samsung/android/server/virtualspace/VSManager;
.super Ljava/lang/Object;
.source "VSManager.java"


# static fields
.field public static RELEASE:Z = false

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final TAG:Ljava/lang/String; = "VSManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field mClientDisplayId:I

.field mClientPid:I

.field private mClosing:Z

.field private final mContext:Landroid/content/Context;

.field mDisplayRedirected:Z

.field final mDm:Landroid/hardware/display/DisplayManager;

.field private final mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field final mIm:Lcom/android/server/input/InputManagerService;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMainWindowsHidden:Z

.field mSAM:Lcom/android/server/am/SamsungActivityManagerService;

.field private mSB:Lcom/android/server/statusbar/StatusBarManagerService;

.field final mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mSavedSelectedInputMethod:Ljava/lang/String;

.field private mSavedSelectedInputMethodSubtype:Ljava/lang/String;

.field private mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/virtualspace/VSManager;->RELEASE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mIm:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSManager(Lcom/samsung/android/server/virtualspace/VSManager;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainHandler:Landroid/os/Handler;

    const-string/jumbo v1, "VSMHandlerThread"

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->makeHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method

.method private enableStatusBar(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mToken:Landroid/os/IBinder;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/android/server/policy/PolicyControl;->setForceFullScreen(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->performLayout()V

    return-void

    :cond_2
    const/high16 v0, 0x3ff0000

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private endDisplayRedirect()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->hideAllMainWindows(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStacks(IZ)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    return-void
.end method

.method private makeHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager$1;-><init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/Looper;)V

    return-object v1
.end method

.method private setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 2

    const-string/jumbo v1, "sys.vs.mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDisplayRedirect(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/SamsungActivityManagerService;->findActivityContainer(I)Landroid/app/IActivityContainer;

    move-result-object v0

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityContainer;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/os/IBinder;)Lcom/samsung/android/multiscreen/virtualspace/IVSSession;
    .locals 13

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "VSManager.connect()"

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.virtualspace.permission.USE_VIRTUAL_SPACE"

    invoke-virtual {v5, v10}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/samsung/android/server/virtualspace/VSManager;->RELEASE:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v10, "Caller doesn\'t have the permission to connect to the VSManager"

    invoke-direct {v5, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_1
    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "Failed permission check, ignored on this developer build"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_2

    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "Error: null client"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v12

    :cond_1
    :try_start_2
    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "Passed permission check"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-nez v5, :cond_3

    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "Error: still connected"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v12

    :cond_3
    :try_start_3
    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "The previous session is still closing, waiting..."

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    sub-long v8, v10, v6

    const-wide/16 v10, 0x2710

    cmp-long v5, v8, v10

    if-gtz v5, :cond_4

    const-wide/16 v10, 0x32

    :try_start_4
    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/virtualspace/VSManager;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :cond_4
    :try_start_5
    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "VSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Timed out after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms of waiting for the previous session to close"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v12

    :cond_5
    :try_start_6
    const-string/jumbo v5, "VSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Done waiting for the previous session to close, took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v0

    :try_start_7
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/am/SamsungActivityManagerService;->getCallingActivityToken(I)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_7

    const-string/jumbo v5, "VSManager"

    const-string/jumbo v10, "No parent activity"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v12

    :cond_7
    :try_start_9
    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->startDisplayRedirect(I)V

    new-instance v5, Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-direct {v5, p0, p1, v4}, Lcom/samsung/android/server/virtualspace/VSSession;-><init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v5

    :catchall_1
    move-exception v5

    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method hideAllMainWindows(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainWindowsHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainWindowsHidden:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->setHideNonVSStacks(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runTask(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(ZLjava/lang/Runnable;)V

    return-void
.end method

.method runTask(ZLjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(ZLjava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method runTask(ZLjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method declared-synchronized sessionClosed(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSManager.sessionClosed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientPid:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService;->updateOomAdj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManager;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sessionClosing(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "VSManager.sessionClosing()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->enableStatusBar(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_input_method_subtype"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSManager;->endDisplayRedirect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "VSManager.sessionStarting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientPid:I

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->enableStatusBar(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethod:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    const-string/jumbo v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSamsungActivityManager(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    return-void
.end method

.method swapMainDisplayWith(I)V
    .locals 3

    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Swapping displays 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->swapLogicalDisplays(II)V

    return-void
.end method
