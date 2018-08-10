.class public Landroid/support/v17/leanback/widget/DetailsOverviewRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "DetailsOverviewRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    }
.end annotation


# instance fields
.field private mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageScaleUpAllowed:Z

.field private mItem:Ljava/lang/Object;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method final addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_3

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isImageScaleUpAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    return v0
.end method

.method final removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
