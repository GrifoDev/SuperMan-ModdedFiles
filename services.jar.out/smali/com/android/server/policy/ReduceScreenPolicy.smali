.class public interface abstract Lcom/android/server/policy/ReduceScreenPolicy;
.super Ljava/lang/Object;
.source "ReduceScreenPolicy.java"


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V
.end method

.method public abstract isHomeTripleTapEnabled()Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract startService(I)V
.end method

.method public abstract stopService(I)V
.end method

.method public abstract systemBooted()V
.end method
