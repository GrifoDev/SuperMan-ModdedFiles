.class public interface abstract Landroid/accessibilityservice/AccessibilityService$Callbacks;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract init(ILandroid/os/IBinder;)V
.end method

.method public abstract onAccessibilityButtonAvailabilityChanged(Z)V
.end method

.method public abstract onAccessibilityButtonClicked()V
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onFingerprintCapturingGesturesChanged(Z)V
.end method

.method public abstract onFingerprintGesture(I)V
.end method

.method public abstract onGesture(I)Z
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onMagnificationChanged(Landroid/graphics/Region;FFF)V
.end method

.method public abstract onPerformGestureResult(IZ)V
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract onSoftKeyboardShowModeChanged(I)V
.end method
