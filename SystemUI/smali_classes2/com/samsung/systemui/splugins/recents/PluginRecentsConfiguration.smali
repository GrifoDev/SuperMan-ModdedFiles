.class public interface abstract Lcom/samsung/systemui/splugins/recents/PluginRecentsConfiguration;
.super Ljava/lang/Object;
.source "PluginRecentsConfiguration.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getColorPrimary()I
.end method

.method public abstract getLaunchState()Lcom/samsung/systemui/splugins/recents/PluginRecentsActivityLaunchState;
.end method

.method public abstract isAppListVisible()Z
.end method

.method public abstract isInLockTaskEditMode()Z
.end method

.method public abstract isInMultiWindowMode()Z
.end method

.method public abstract isListTypeLayout()Z
.end method

.method public abstract isRecentListVisible()Z
.end method

.method public abstract setInLockTaskEditMode(Z)V
.end method
