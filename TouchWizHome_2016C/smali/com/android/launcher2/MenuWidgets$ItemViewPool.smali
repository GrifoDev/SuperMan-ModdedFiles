.class Lcom/android/launcher2/MenuWidgets$ItemViewPool;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewPool"
.end annotation


# instance fields
.field private mFolderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/WidgetFolderView;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPagedViewWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedViewWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mFolderViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mPagedViewWidgets:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mFolderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mPagedViewWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(ZLandroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WidgetFolderView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mFolderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mFolderViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WidgetFolderView;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mPagedViewWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mPagedViewWidgets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Landroid/view/ViewGroup;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    instance-of v1, p1, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/WidgetFolderView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolderView;->resetToRecycle()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mFolderViews:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/WidgetFolderView;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    instance-of v1, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewWidget;->resetToRecycle()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->mPagedViewWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
