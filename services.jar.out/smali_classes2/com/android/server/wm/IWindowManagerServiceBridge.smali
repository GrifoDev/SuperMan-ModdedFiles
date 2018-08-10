.class public interface abstract Lcom/android/server/wm/IWindowManagerServiceBridge;
.super Ljava/lang/Object;
.source "IWindowManagerServiceBridge.java"


# virtual methods
.method public abstract adjustWindowVS(Landroid/view/WindowManager$LayoutParams;I)I
.end method

.method public abstract applyVSOverride(Lcom/android/server/wm/WindowState;Landroid/util/MergedConfiguration;)V
.end method

.method public abstract clearForcedDisplaySizeDensity(I)V
.end method

.method public abstract createSamsungCustomAnimationLocked(Landroid/graphics/Rect;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
.end method

.method public abstract ensureFocusedDisplay(I)V
.end method

.method public abstract existSamsungAnimationDisabledPackage(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract findForceLocalOrientationWindowLayer(Lcom/android/server/wm/DisplayContent;)I
.end method

.method public abstract findWallpaperLocked()Lcom/android/server/wm/WindowState;
.end method

.method public abstract focusChanged(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract freezeDisplay(IJ)V
.end method

.method public abstract getActivityManagerServiceBridge()Lcom/android/server/am/IActivityManagerServiceBridge;
.end method

.method public abstract getClipBoardWindow()Lcom/android/server/wm/WindowState;
.end method

.method public abstract getCoverStateSwitch()Z
.end method

.method public abstract getCurrentAspectRatio()F
.end method

.method public abstract getCustomMaxAspectRatio(Ljava/lang/String;F)F
.end method

.method public abstract getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
.end method

.method public abstract getFocusedTaskId()I
.end method

.method public abstract getFocusedWindowInfoForScreenShot(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFreezeSurfaceLayer(Landroid/view/Display;)I
.end method

.method public abstract getIMEDisplayIdVS(I)I
.end method

.method public abstract getInitialDisplayProperties(I)[I
.end method

.method public abstract getNaviBarHidePolicy(Ljava/lang/String;I)I
.end method

.method public abstract getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract getPenState()I
.end method

.method public abstract getScreenCaptureMDMPolicy(I)Z
.end method

.method public abstract getUserDisplayDensity()I
.end method

.method public abstract getUserDisplaySize(Landroid/graphics/Point;)V
.end method

.method public abstract getVSFocusedWindow()Lcom/android/server/wm/WindowState;
.end method

.method public abstract getVSPriority(I)I
.end method

.method public abstract getVisibleWindowInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hideChangeRatioButton()V
.end method

.method public abstract inVSMode()Z
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public abstract isBackgroundAnimationNeeded()Z
.end method

.method public abstract isDesktopModeChanging()Z
.end method

.method public abstract isDesktopModeForPreparing()Z
.end method

.method public abstract isDesktopModeLoadingScreenShowing()Z
.end method

.method public abstract isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isMaxAspectComponentEx(Landroid/content/ComponentName;I)I
.end method

.method public abstract isMaxAspectPackage(Ljava/lang/String;I)Z
.end method

.method public abstract isMaxAspectPackageEx(Ljava/lang/String;I)I
.end method

.method public abstract isNaviBarHidePolicy(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isNavigationBarHidable(Ljava/lang/String;I)Z
.end method

.method public abstract isScreenCaptureDisabledLocked(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract isVSVisible()Z
.end method

.method public abstract launchHomeForDesktopMode()V
.end method

.method public abstract migrateWindows(IIZZ)V
.end method

.method public abstract notifyAppOrientationUpdated(II)V
.end method

.method public abstract notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
.end method

.method public abstract notifyOrientationChangeComplete()V
.end method

.method public abstract onShowVirtualKeyboardVS(I)Z
.end method

.method public abstract overridePendingAppTransitionCustomScaleDown(Landroid/graphics/Rect;)V
.end method

.method public abstract overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
.end method

.method public abstract overridePidDisplay(II)V
.end method

.method public abstract performLayout()V
.end method

.method public abstract prepareAddWindowLw(Lcom/android/server/wm/WindowState;)I
.end method

.method public abstract prepareDesktopTaskBar(Z)V
.end method

.method public abstract readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract restoreSizeDensityIfNeeded(Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract saveAllMaxAspectPackages()V
.end method

.method public abstract setAnimationFrom(Ljava/lang/String;)V
.end method

.method public abstract setAnimationFromLauncher(Ljava/lang/String;)V
.end method

.method public abstract setAppEnterExitAnimationForWallpaperLocked(Lcom/android/server/wm/WindowState;Landroid/util/ArraySet;Landroid/util/ArraySet;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setBackgroundAnimationNeeded(Z)V
.end method

.method public abstract setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract setDesktopTaskBar(Z)V
.end method

.method public abstract setDisplayRotation(IIZ)V
.end method

.method public abstract setDisplaySizeDensity()V
.end method

.method public abstract setFocusedApp(Landroid/os/IBinder;)V
.end method

.method public abstract setFocusedDisplay(IZ)Z
.end method

.method public abstract setForcedDisplaySizeDensity(IIIIZZ)V
.end method

.method public abstract setInMouseStylusMode(Z)Z
.end method

.method public abstract setInTouchMode(Z)Z
.end method

.method public abstract setMaxAspectPackage(Ljava/lang/String;IZZZ)V
.end method

.method public abstract setMaxAspectPackages(Ljava/util/List;[IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation
.end method

.method public abstract setNaviBarHidePolicy(Ljava/lang/String;IZ)V
.end method

.method public abstract setOverrideDisplaySize(III)V
.end method

.method public abstract setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
.end method

.method public abstract setWmForcedDisplay(II)V
.end method

.method public abstract shouldShowTransitionDim(Landroid/view/WindowManager$LayoutParams;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract showChangeRatioButton(IILjava/lang/String;I)V
.end method

.method public abstract stopFreezingDisplayLocked(Ljava/lang/String;)V
.end method

.method public abstract swapLogicalDisplays(II)V
.end method

.method public abstract unfreezeDisplay()V
.end method

.method public abstract updateBaseDisplayMetrics(IIII)V
.end method

.method public abstract updateBoundsVS(Lcom/android/server/wm/DisplayContent;II)V
.end method

.method public abstract updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract updateCurrentUserPolicy(I)V
.end method

.method public abstract updateDimBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DimLayer$DimLayerUser;Landroid/graphics/Rect;)Z
.end method

.method public abstract updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z
.end method

.method public abstract updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V
.end method

.method public abstract updateSurfacesInTransactionLocked()V
.end method

.method public abstract waitOrientationComplete(IJ)Z
.end method
