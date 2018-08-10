.class public interface abstract Lcom/android/server/wm/AppWindowContainerListener;
.super Ljava/lang/Object;
.source "AppWindowContainerListener.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# virtual methods
.method public abstract getEdgeTspDeadzone()Ljava/lang/String;
.end method

.method public abstract getShowWhenLocked()Z
.end method

.method public abstract getUserId()I
.end method

.method public abstract isDeviceDefaultTheme()Z
.end method

.method public abstract isKeepTaskSnapshot()Z
.end method

.method public abstract keyDispatchingTimedOut(Ljava/lang/String;I)Z
.end method

.method public abstract needForceImmersiveMode()Z
.end method

.method public abstract onStartingWindowDrawn(J)V
.end method

.method public abstract onWindowsDrawn(J)V
.end method

.method public abstract onWindowsGone()V
.end method

.method public abstract onWindowsVisible()V
.end method
