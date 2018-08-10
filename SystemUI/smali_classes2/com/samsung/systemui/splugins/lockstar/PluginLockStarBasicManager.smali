.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;
.super Ljava/lang/Object;
.source "PluginLockStarBasicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract getLockStarItemViews()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onLockStarModeChanged(Z)V
.end method

.method public abstract reset()V
.end method

.method public abstract setBarState(I)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;)V
.end method

.method public abstract setLockStarView(I)V
.end method

.method public abstract setPanelView(Landroid/view/ViewGroup;)V
.end method

.method public abstract startLockStarUnlockAnimation()V
.end method

.method public abstract updateWhiteWallpaperState(Z)V
.end method
