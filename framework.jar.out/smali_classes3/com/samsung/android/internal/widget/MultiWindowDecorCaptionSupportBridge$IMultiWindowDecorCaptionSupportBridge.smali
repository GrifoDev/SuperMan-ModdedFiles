.class public interface abstract Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorCaptionSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiWindowDecorCaptionSupportBridge"
.end annotation


# virtual methods
.method public abstract getFullScreenFreeformWindowCaptionVisibility()I
.end method

.method public abstract getLastMeasuredWithCaptionHeight()Z
.end method

.method public abstract getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;
.end method

.method public abstract init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;Z)V
.end method

.method public abstract isDesktopMode()Z
.end method

.method public abstract isFullScreenFreeform()Z
.end method

.method public abstract notifyMovingTask(Z)V
.end method

.method public abstract onConfigurationChanged(Z)V
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLayout(ZIIII)V
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract removeContentView()V
.end method

.method public abstract setCaptionView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setLastMeasuredWithCaptionHeight(Z)V
.end method

.method public abstract updateButtonFocus(Z)V
.end method

.method public abstract updateButtonVisibilityByFeature()V
.end method

.method public abstract updateFullScreenFreeformWindowCaptionVisibility(I)V
.end method
