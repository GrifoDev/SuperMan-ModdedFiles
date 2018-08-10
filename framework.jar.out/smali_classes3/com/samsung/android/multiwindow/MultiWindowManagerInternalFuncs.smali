.class public interface abstract Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternalFuncs.java"


# virtual methods
.method public abstract applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
.end method

.method public abstract getImeTargetFreeformTaskId()I
.end method

.method public abstract getLaunchBoundsForMetaKeyEvent(Landroid/view/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;
.end method

.method public abstract hasDockedStack()Z
.end method

.method public abstract isExpandedDockedStackLocked()Z
.end method

.method public abstract isMinimizedDockAndHomeStackResizable(I)Z
.end method

.method public abstract isUsingTaskPositioner()Z
.end method

.method public abstract resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
.end method

.method public abstract shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method
