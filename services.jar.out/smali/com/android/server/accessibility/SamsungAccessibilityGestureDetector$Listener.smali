.class public interface abstract Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
.super Ljava/lang/Object;
.source "SamsungAccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
.end method

.method public abstract onGestureCancelled(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onGestureCompleted(I)Z
.end method

.method public abstract onGestureStarted()Z
.end method

.method public abstract onMultiFingerStarted(I)V
.end method

.method public abstract onMultiFingerStopped(I)V
.end method

.method public abstract onMultiFingerTapDetected(IIZ)V
.end method
