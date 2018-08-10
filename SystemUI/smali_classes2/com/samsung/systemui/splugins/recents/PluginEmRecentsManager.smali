.class public interface abstract Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;
.super Ljava/lang/Object;
.source "PluginEmRecentsManager.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract activate(Lcom/samsung/systemui/splugins/recents/desktop/PluginRecentsWindow;)V
.end method

.method public abstract activate(Lcom/samsung/systemui/splugins/recents/views/PluginRecentsView;)V
.end method

.method public abstract deactivate()V
.end method

.method public abstract initialize(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V
.end method

.method public abstract isBixbyRuleRunning()Z
.end method

.method public abstract resumeBixbyRule()Z
.end method
