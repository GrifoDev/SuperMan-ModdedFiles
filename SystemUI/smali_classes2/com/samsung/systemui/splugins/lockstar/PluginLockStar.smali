.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
.super Ljava/lang/Object;
.source "PluginLockStar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCKSTAR"
    version = 0x3eb
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCKSTAR"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x3

.field public static final VERSION:I = 0x3eb


# virtual methods
.method public abstract getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;
.end method

.method public abstract getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;
.end method

.method public abstract getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;
.end method

.method public abstract getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;
.end method

.method public abstract getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;
.end method

.method public abstract getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;
.end method

.method public abstract getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;
.end method

.method public abstract getTouchManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;
.end method
