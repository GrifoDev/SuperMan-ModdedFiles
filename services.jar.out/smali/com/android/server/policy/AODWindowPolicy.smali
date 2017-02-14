.class public interface abstract Lcom/android/server/policy/AODWindowPolicy;
.super Ljava/lang/Object;
.source "AODWindowPolicy.java"


# virtual methods
.method public abstract canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract finishWindowsDrawn()V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/StatusBarController;)V
.end method

.method public abstract isNightClockVisible()Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract systemBooted()V
.end method
