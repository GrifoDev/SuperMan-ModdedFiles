.class public interface abstract Lcom/samsung/android/view/IWindowStateBridge;
.super Ljava/lang/Object;
.source "IWindowStateBridge.java"


# virtual methods
.method public abstract applyBlurEffect()V
.end method

.method public abstract applyNavbarAlwaysEnabled(I)I
.end method

.method public abstract configureReducedScreenSpec()V
.end method

.method public abstract createSurfaceLocked()I
.end method

.method public abstract disableHideSViewCoverOnce(Z)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getCoverMode()I
.end method

.method public abstract getCustomAspectRatioFrame(Landroid/graphics/Rect;)V
.end method

.method public abstract getDefaultTspDeadzone()Ljava/lang/String;
.end method

.method public abstract getDexCompatUiMode()I
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getMainWindowFlags()I
.end method

.method public abstract getMainWindowSystemUiVisibility()I
.end method

.method public abstract getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;
.end method

.method public abstract getReducedSideTouchArea()I
.end method

.method public abstract getTspDeadzone()Landroid/os/Bundle;
.end method

.method public abstract hasAppTokenBounds()Z
.end method

.method public abstract initPackageConfigurations()V
.end method

.method public abstract isChildWindow()Z
.end method

.method public abstract isCustomAspectRatioWindow()Z
.end method

.method public abstract isDeviceDefaultTheme()Z
.end method

.method public abstract isDexCompatMode()Z
.end method

.method public abstract isFixedOrientation()Z
.end method

.method public abstract isHideBySViewCover()Z
.end method

.method public abstract isHomeTask()Z
.end method

.method public abstract isOnScreen()Z
.end method

.method public abstract isShowWhenLockedAppWindow()Z
.end method

.method public abstract isSurfaceShowing()Z
.end method

.method public abstract needDelayedExitAnimation()Z
.end method

.method public abstract needForceImmersiveMode()Z
.end method

.method public abstract needReverseFrame(Landroid/graphics/Rect;)Z
.end method

.method public abstract needToShowChangeRatioButton()Z
.end method

.method public abstract resetEffects()V
.end method

.method public abstract reverseFrame(Landroid/graphics/Rect;)V
.end method

.method public abstract reverseFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setHideBySViewCover(Z)V
.end method

.method public abstract setNonImmersiveWindow(Z)V
.end method

.method public abstract setOwner(Ljava/lang/Object;)V
.end method

.method public abstract setTspDeadzone(Landroid/os/Bundle;)V
.end method

.method public abstract willBeHideSViewCoverOnce()Z
.end method
