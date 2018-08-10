.class final Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;
.super Landroid/database/Observable;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeChanged(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeInserted(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeRemoved(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
