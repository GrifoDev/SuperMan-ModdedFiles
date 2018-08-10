.class public interface abstract Lcom/samsung/systemui/splugins/recents/PluginRecents;
.super Ljava/lang/Object;
.source "PluginRecents.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract dockTopTask(IILandroid/graphics/Rect;I)Z
.end method

.method public abstract getLastTaskStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
.end method

.method public abstract getPluginConfiguration()Lcom/samsung/systemui/splugins/recents/PluginRecentsConfiguration;
.end method

.method public abstract getPluginDebugFlags()Lcom/samsung/systemui/splugins/recents/PluginRecentsDebugFlags;
.end method

.method public abstract getPluginSettingHelper()Lcom/samsung/systemui/splugins/recents/model/PluginRecentsSettingHelper;
.end method

.method public abstract getPluginSystemServices()Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract showRecentApps(ZZ)V
.end method

.method public abstract toggleRecentApps()V
.end method
