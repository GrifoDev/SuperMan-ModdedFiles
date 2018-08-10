.class public interface abstract Lcom/samsung/systemui/splugins/recents/model/PluginTask;
.super Ljava/lang/Object;
.source "PluginTask.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/recents/model/PluginTask$PluginTaskKey;
    }
.end annotation


# virtual methods
.method public abstract getKey()Lcom/samsung/systemui/splugins/recents/model/PluginTask$PluginTaskKey;
.end method

.method public abstract getResizeMode()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isDockable()Z
.end method

.method public abstract isFreeformTask()Z
.end method

.method public abstract isPairedTask()Z
.end method

.method public abstract isTaskLocked()Z
.end method

.method public abstract isVisible()Z
.end method
