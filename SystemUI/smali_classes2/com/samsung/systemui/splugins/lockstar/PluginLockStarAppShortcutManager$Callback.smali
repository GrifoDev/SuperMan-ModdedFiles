.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;
.super Ljava/lang/Object;
.source "PluginLockStarAppShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract cancelDAAffordance()V
.end method

.method public abstract createAppShortcutDataFromPackageName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;
.end method

.method public abstract getIntent(Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;)Landroid/content/Intent;
.end method

.method public abstract inflatePreview(Landroid/content/Intent;)Landroid/view/View;
.end method

.method public abstract onAnimationToSideEnded()V
.end method

.method public abstract onAnimationToSideStarted()V
.end method

.method public abstract onIconClicked(Z)V
.end method

.method public abstract onSwipingAborted()V
.end method

.method public abstract onSwipingStarted(Z)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method
