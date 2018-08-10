.class public interface abstract Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;
.super Ljava/lang/Object;
.source "PluginTaskView.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getAndUpdateScreenRatioState()I
.end method

.method public abstract getHeaderView()Lcom/samsung/systemui/splugins/recents/views/PluginTaskViewHeader;
.end method

.method public abstract getScreenRatioButtonView()Landroid/view/View;
.end method

.method public abstract getTask()Lcom/samsung/systemui/splugins/recents/model/PluginTask;
.end method
