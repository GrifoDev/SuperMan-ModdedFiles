.class public interface abstract Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackView;
.super Ljava/lang/Object;
.source "PluginTaskStackView.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getChildViewForTask(Lcom/samsung/systemui/splugins/recents/model/PluginTask;)Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;
.end method

.method public abstract getFocusedTask()Lcom/samsung/systemui/splugins/recents/model/PluginTask;
.end method

.method public abstract getScroller()Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackViewScroller;
.end method

.method public abstract getStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
.end method

.method public abstract getStackAlgorithm()Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackLayoutAlgorithm;
.end method

.method public abstract setFocusedTask(IZZ)Z
.end method
