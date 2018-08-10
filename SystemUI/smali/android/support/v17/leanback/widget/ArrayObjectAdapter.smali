.class public Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "ArrayObjectAdapter.java"


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyArrayItemRangeChanged(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-ltz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public replace(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
