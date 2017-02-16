.class public abstract Landroid/view/WindowManagerInternal;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerInternal$AppTransitionListener;,
        Landroid/view/WindowManagerInternal$MagnificationCallbacks;,
        Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;,
        Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addWindowToken(Landroid/os/IBinder;I)V
.end method

.method public abstract clearLastInputMethodWindowForTransition()V
.end method

.method public abstract getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getInputMethodWindowVisibleHeight()I
.end method

.method public abstract getMagnificationRegion(Landroid/graphics/Region;)V
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract isDockedDividerResizing()Z
.end method

.method public abstract isHardKeyboardAvailable()Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isStackVisible(I)Z
.end method

.method public abstract registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;Z)V
.end method

.method public abstract requestTraversalFromDisplayManager()V
.end method

.method public abstract saveLastInputMethodWindowForTransition()V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
.end method

.method public abstract setMagnificationSpec(Landroid/view/MagnificationSpec;)V
.end method

.method public abstract setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
.end method

.method public abstract setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
.end method
