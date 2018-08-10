.class public interface abstract Lcom/samsung/systemui/splugins/recents/PluginRecentsActivityLaunchState;
.super Ljava/lang/Object;
.source "PluginRecentsActivityLaunchState.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getLaunchedFullscreenTaskId()I
.end method

.method public abstract getLaunchedToTaskId()I
.end method

.method public abstract isLaunchedFromApp()Z
.end method

.method public abstract isLaunchedFromBlacklistedApp()Z
.end method

.method public abstract isLaunchedFromHome()Z
.end method

.method public abstract isLaunchedFromPipApp()Z
.end method

.method public abstract isLaunchedViaDockGesture()Z
.end method

.method public abstract isLaunchedViaDragGesture()Z
.end method

.method public abstract isLaunchedWithAltTab()Z
.end method

.method public abstract isLaunchedWithNextPipApp()Z
.end method

.method public abstract setIsLaunchedWithAltTab(Z)V
.end method

.method public abstract setLaunchedToTaskId(I)V
.end method
