.class public interface abstract Lcom/android/server/policy/EdgeWindowPolicy;
.super Ljava/lang/Object;
.source "EdgeWindowPolicy.java"


# virtual methods
.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract beginLayoutLw(IIIIIII)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getBackgroundWindow()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract getPendingRemoveBackground()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IPhoneWindowManagerBridge;Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/PhoneWindowManager;)V
.end method

.method public abstract initCocktailBarSize(I)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I
.end method

.method public abstract isCocktailRotationAnimationNeeded()Z
.end method

.method public abstract isEdgeWakeupPending()Z
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestCocktailRotationAnimation(Z)V
.end method

.method public abstract requestEdgeScreenWakeup(ZI)V
.end method

.method public abstract requestEdgeScreenWakeupIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;Z)V
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setPendingRemoveBackground(Z)V
.end method

.method public abstract shouldIgnoreForcingOrientation(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract windowTypeToLayerLw(I)I
.end method
