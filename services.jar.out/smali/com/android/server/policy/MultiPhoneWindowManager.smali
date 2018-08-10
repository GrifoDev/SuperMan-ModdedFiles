.class public Lcom/android/server/policy/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mDecorCaptionHeight:I

.field private mH:Landroid/os/Handler;

.field private mImeTargetFreeformTaskId:I

.field private final mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mOverlappedFreeformWithNaviBar:Z

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private final mSamsungPhoneWindowManager:Lcom/android/server/policy/IPhoneWindowManagerBridge;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    iput-object p1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSamsungPhoneWindowManager:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getMultiWindowInternalFunc()Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p0}, Lcom/android/server/policy/MultiPhoneWindowManager;->loadResource()V

    const-string/jumbo v0, "MultiPhoneWindowManager"

    const-string/jumbo v1, "MultiPhoneWindowManager Constructor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 4

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isForceImmersiveMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    if-eq p1, p0, :cond_2

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v0, p2

    and-int/lit16 v2, p2, 0x1802

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    and-int/lit16 v0, p2, -0x1803

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return p2
.end method

.method private loadResource()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mDecorCaptionHeight:I

    return-void
.end method


# virtual methods
.method applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v0

    return v0
.end method

.method getDecorCaptionWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mDecorCaptionHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSamsungPhoneWindowManager:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getNavigationBarHeight()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    return v0
.end method

.method hasDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->hasDockedStack()Z

    move-result v0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->isExpandedDockedStackLocked()Z

    move-result v0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSamsungPhoneWindowManager:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isLockTaskModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isMinimizedDockAndHomeStackResizable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->isMinimizedDockAndHomeStackResizable(I)Z

    move-result v0

    return v0
.end method

.method isOverlappedFreeformWithNaviBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    return v0
.end method

.method public isQuickPanelExpanded()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRecentsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_policy_MultiPhoneWindowManager_5694(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeFreeformTask(I)V

    return-void
.end method

.method minimizeAllFreeformTasks()V
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v1, "MultiPhoneWindowManager"

    const-string/jumbo v2, "minimizeAllFreeformTasks"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(IZ)Z

    iget v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    if-le v1, v6, :cond_0

    const-string/jumbo v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minimizeFreeformTask, mImeTargetFreeformTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$Lambda$2g9ZVB86lrmpC-9aSo3EK3CpOxI;

    invoke-direct {v2, v0, p0}, Lcom/android/server/policy/-$Lambda$2g9ZVB86lrmpC-9aSo3EK3CpOxI;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput v6, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    return-void
.end method

.method minimizeAllFreeformTasks(I)V
    .locals 3

    const-string/jumbo v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minimizeAllFreeformTasks, excludeTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(I)Z

    return-void
.end method

.method minimizeFreeform(Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "MultiPhoneWindowManager"

    const-string/jumbo v1, "minimizeFreeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MultiPhoneWindowManager;->loadResource()V

    return-void
.end method

.method setMultiWindowEnabled(ZLjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string/jumbo v2, "MultiPhoneWindowManager"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setOverlappedFreeformWithNaviBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    :cond_0
    return-void
.end method

.method updateImeTargetFreeformTaskId()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->getImeTargetFreeformTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const-string/jumbo v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeTargetFreeformTaskId: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
