.class public interface abstract Lcom/android/systemui/qs/QSHost;
.super Ljava/lang/Object;
.source "QSHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapsePanels()V
.end method

.method public abstract forceCollapsePanels()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTileServices()Lcom/android/systemui/qs/external/TileServices;
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract isDefaultCustomTile(Landroid/content/ComponentName;)Z
.end method

.method public abstract onTileStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract refreshTileList()V
.end method

.method public abstract removeTile(Ljava/lang/String;)V
.end method

.method public abstract shouldBeHiddenByKnox(Ljava/lang/String;)Z
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
