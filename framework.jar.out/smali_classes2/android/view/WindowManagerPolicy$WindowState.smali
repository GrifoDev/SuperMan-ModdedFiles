.class public interface abstract Landroid/view/WindowManagerPolicy$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowState"
.end annotation


# virtual methods
.method public canAddInternalSystemWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract canAffectSystemUiFlags()Z
.end method

.method public abstract computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract getAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getAttrs()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getBaseType()I
.end method

.method public abstract getBridge()Lcom/samsung/android/view/IWindowStateBridge;
.end method

.method public abstract getContentFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenContentInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenInsetsPendingLw()Z
.end method

.method public abstract getGivenVisibleInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract getOverscanFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getOwningPackage()Ljava/lang/String;
.end method

.method public abstract getOwningUid()I
.end method

.method public abstract getRotationAnimationHint()I
.end method

.method public abstract getShownPositionLw()Landroid/graphics/Point;
.end method

.method public abstract getStackId()I
.end method

.method public abstract getSurfaceLayer()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract getTaskId()I
.end method

.method public abstract getTransientBarShowingDelay()I
.end method

.method public abstract getVisibleFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract hasAppShownWindows()Z
.end method

.method public abstract hasDrawnLw()Z
.end method

.method public abstract hideLw(Z)Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAnimatingLw()Z
.end method

.method public abstract isDefaultDisplay()Z
.end method

.method public abstract isDexCompatModeLw()Z
.end method

.method public abstract isDimming()Z
.end method

.method public abstract isDisplayedLw()Z
.end method

.method public abstract isDrawnLw()Z
.end method

.method public abstract isFullscreenFreeformLw()Z
.end method

.method public abstract isGoneForLayoutLw()Z
.end method

.method public abstract isInMultiWindowMode()Z
.end method

.method public abstract isInputMethodWindow()Z
.end method

.method public abstract isVisibleLw()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract showLw(Z)Z
.end method
