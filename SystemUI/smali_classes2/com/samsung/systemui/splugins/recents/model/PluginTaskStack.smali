.class public interface abstract Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
.super Ljava/lang/Object;
.source "PluginTaskStack.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getLaunchTarget()Lcom/samsung/systemui/splugins/recents/model/PluginTask;
.end method

.method public abstract getStackTasks()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getTaskCount()I
.end method

.method public abstract hasOnlyLockedTasks()Z
.end method

.method public abstract indexOfStackTask(Lcom/samsung/systemui/splugins/recents/model/PluginTask;)I
.end method
