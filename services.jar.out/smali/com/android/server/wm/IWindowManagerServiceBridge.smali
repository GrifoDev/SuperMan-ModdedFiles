.class public interface abstract Lcom/android/server/wm/IWindowManagerServiceBridge;
.super Ljava/lang/Object;
.source "IWindowManagerServiceBridge.java"


# virtual methods
.method public abstract adjustMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
.end method

.method public abstract adjustWindow(Landroid/view/WindowManager$LayoutParams;I)I
.end method

.method public abstract checkAddDisplay(Landroid/view/WindowManager$LayoutParams;I)I
.end method

.method public abstract clearForcedDisplaySizeDensity(I)V
.end method

.method public abstract computeScreenConfiguration(Landroid/content/res/Configuration;I)V
.end method

.method public abstract createSamsungCustomAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;)V
.end method

.method public abstract findForceLocalOrientationWindowLayer()I
.end method

.method public abstract getCoverStateSwitch()Z
.end method

.method public abstract getDefaultDisplayDensity(I)I
.end method

.method public abstract getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
.end method

.method public abstract getFocusedDisplayId()I
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

.method public abstract getInitialDisplayProperties(I)[I
.end method

.method public abstract getPenState()I
.end method

.method public abstract getRequestedRotation()I
.end method

.method public abstract getScreenCaptureMDMPolicy(I)Z
.end method

.method public abstract getVSClientPid()I
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

.method public abstract inVSMode()Z
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public abstract isKnoxDesktopModeLocked()Z
.end method

.method public abstract moveTaskToDisplayLocked(III)V
.end method

.method public abstract notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
.end method

.method public abstract notifyUpdatedAppOrientation(II)V
.end method

.method public abstract overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
.end method

.method public abstract prepareAddWindowLw(Lcom/android/server/wm/WindowState;)I
.end method

.method public abstract prepareSurfaceBeforeFreezing([I)V
.end method

.method public abstract readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract restoreFromForceUserActivityTimeout(ZLcom/android/server/wm/WindowState;)V
.end method

.method public abstract restoreSizeDensityIfNeeded(Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract setDisplaySizeDensity()V
.end method

.method public abstract setFocusedApp(Landroid/os/IBinder;)V
.end method

.method public abstract setFocusedDisplay(IZ)Z
.end method

.method public abstract setFocusedDisplayId(I)V
.end method

.method public abstract setForcedDisplaySizeDensity(IIIIZ)V
.end method

.method public abstract setWmForcedDisplayLog(II)V
.end method

.method public abstract shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z
.end method

.method public abstract stopFreezingDisplayLocked(Ljava/lang/String;)V
.end method

.method public abstract updateBounds()V
.end method

.method public abstract updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z
.end method

.method public abstract updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V
.end method

.method public abstract updateSurfacesInTransactionLocked()Z
.end method

.method public abstract updateWindowLockedIfNeeded(Lcom/android/server/wm/WindowState;I)Z
.end method
