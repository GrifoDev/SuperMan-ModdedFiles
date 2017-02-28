.class public interface abstract Lcom/android/launcher2/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAppsLoaded()V
.end method

.method public abstract bindAppsRestoreItemsChange(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFestivalModeChange(Z)V
.end method

.method public abstract bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
.end method

.method public abstract bindHomeBegin()V
.end method

.method public abstract bindHomeDeleteFestivalPage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeEnd()V
.end method

.method public abstract bindHomeFolders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeInsertFestivalPage()V
.end method

.method public abstract bindHomeItemsRemoved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeItemsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomePageAdjust(I)V
.end method

.method public abstract bindHomeRemoveCurrentItem(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
.end method

.method public abstract bindHomeRemovePrvItem(Lcom/android/launcher2/HomeItem;)V
.end method

.method public abstract bindHomeShortcut(Lcom/android/launcher2/HomeItem;)V
.end method

.method public abstract bindHomeShortcuts(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract bindHomeValidationCheck(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHotseatItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindIsDragOnGoing()Z
.end method

.method public abstract bindPackagesChanged(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindRefreshItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindSearchablesChanged()V
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentPageIndex()I
.end method

.method public abstract getPreferredMenuPageIndex()I
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract unbindAllHomeItems()V
.end method
