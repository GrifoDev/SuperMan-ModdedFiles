.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;
.super Ljava/lang/Object;
.source "PluginLockStarTaskShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addListener(Ljava/lang/String;)V
.end method

.method public abstract isFlashlightEnabled()Z
.end method

.method public abstract removeListener()V
.end method

.method public abstract setFlashlight()V
.end method

.method public abstract setFlashlightListener(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;)V
.end method
