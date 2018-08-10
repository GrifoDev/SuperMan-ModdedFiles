.class public interface abstract Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowView;
.super Ljava/lang/Object;
.source "PluginRecentsWindowView.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract clearFocusedTask()V
.end method

.method public abstract getFocusedIndex()I
.end method

.method public abstract getStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
.end method

.method public abstract getViewHolderOfFocusedIndex()Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;
.end method

.method public abstract scrollDownVisibleLine()V
.end method

.method public abstract scrollUpVisibleLine()V
.end method

.method public abstract setFocusedIndex(I)V
.end method

.method public abstract updateFocusedTask(Z)V
.end method
