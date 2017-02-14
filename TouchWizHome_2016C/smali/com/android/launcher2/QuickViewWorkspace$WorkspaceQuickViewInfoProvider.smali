.class public interface abstract Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkspaceQuickViewInfoProvider"
.end annotation


# virtual methods
.method public abstract addPage()V
.end method

.method public abstract deletePage(I)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;
.end method

.method public abstract getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
.end method

.method public abstract getPage(I)Lcom/android/launcher2/CellLayout;
.end method

.method public abstract isIncludeItem(I)Z
.end method

.method public abstract setDarkenViewAlpha(F)V
.end method

.method public abstract setHomeScreenAt(I)V
.end method

.method public abstract updateWallpaperOffsets()V
.end method

.method public abstract wallpaperHack()V
.end method
