.class public Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
.super Ljava/lang/Object;
.source "MultiWindowManagerProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginMultiWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;


# instance fields
.field private mAnimatingDockedStackForResizableHomCnt:I

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mSnapCaller:Ljava/lang/String;

.field private mSnapTarget:I

.field private mSnapViewCropRect:Landroid/graphics/Rect;

.field private mStartSnapMode:Z

.field private final mStartSnapModeRunnable:Ljava/lang/Runnable;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapTarget:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->DEBUG:Z

    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public addAppPairOnHomeScreen()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->addAppPairOnHomeScreen()I

    const/4 v0, 0x0

    return v0
.end method

.method public addAppPairShortcut()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->addAppPairShortcut()V

    return-void
.end method

.method public animatingDockedStackForResizableHome(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animatingDockedStackForResizableHome failure. reason: invalid Cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->animatingDockedStackForResizableHome(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mAnimatingDockedStackForResizableHomCnt:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->animatingDockedStackForResizableHome(Z)V

    goto :goto_1
.end method

.method public canAnimateExpandDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->canAnimateExpandDockedStack()Z

    move-result v0

    return v0
.end method

.method public closeTask(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "MultiWindowManagerProxy"

    const-string/jumbo v1, "closeTask() failure. reason: invalid stackId"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enterFreeformTask(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveTopTaskToFreeformStack(I)V

    return-void
.end method

.method public exitDockedMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitDockedMode()Z

    move-result v0

    return v0
.end method

.method public getFocusedStackId()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getPackageNameOfDockedStack()Landroid/app/ActivityManager$StackInfo;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public getPluginDividerPanel(Landroid/content/Context;)Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;

    return-object v1
.end method

.method public getPluginSystemServiceProxy()Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    return-object v0
.end method

.method public getTargetStackRect(ILandroid/graphics/Rect;)V
    .locals 2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public isDexModeSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v0

    return v0
.end method

.method public isFreeformSupport()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    return v0
.end method

.method public isMultiWindowEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    return v0
.end method

.method public isMultiWindowSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPairAppSupportLauncher()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isPairAppSupportLauncher()Z

    move-result v0

    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowSupport()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    return v0
.end method

.method public maximizeTopTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeTopTask()Z

    move-result v0

    return v0
.end method

.method public minimizeAllFreeformTasks(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(I)Z

    move-result v0

    return v0
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeSearchedTask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public minimizeTopTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTopTask()Z

    move-result v0

    return v0
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    return-void
.end method

.method public moveTopTaskToFreeformStack(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveTopTaskToFreeformStack(I)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return-void
.end method

.method public removeFocusedTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask()Z

    move-result v0

    return v0
.end method

.method public removeFreeformTasks(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFreeformTasks(I)Z

    move-result v0

    return v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFreeform()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startFreeform()I

    move-result v0

    return v0
.end method

.method public startSnapMode(ZZILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapMode:Z

    iput-object p4, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapTarget:I

    iput-object p5, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public swapTasks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->swapDockedAndFullscreenStack()V

    return-void
.end method
