.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;
.super Ljava/lang/Object;
.source "PluginEmSystemUIManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.bixby.PLUGIN_EMSYSTEMUIMANAGER"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.bixby.PLUGIN_EMSYSTEMUIMANAGER"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getEmMultiWindowManager()Lcom/samsung/systemui/splugins/bixby/PluginEmMultiWindowManager;
.end method

.method public abstract getEmNotificationManager()Lcom/samsung/systemui/splugins/bixby/PluginEmNotificationManager;
.end method

.method public abstract getEmRecentsManager()Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;
.end method

.method public abstract getEmTaskBarManager()Lcom/samsung/systemui/splugins/bixby/PluginEmTaskBarManager;
.end method
