.class public Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "SparseArrayObjectAdapter.java"


# instance fields
.field private mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lookup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyArrayItemRangeChanged(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
