.class public abstract Landroid/support/v17/leanback/widget/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Presenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
    }
.end annotation


# instance fields
.field private mFacets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cancelAnimationsRecursive(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, v0, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/widget/Presenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Presenter;->mFacets:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Presenter;->mFacets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.end method

.method public abstract onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
.end method

.method public onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/Presenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    return-void
.end method

.method public final setFacet(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Presenter;->mFacets:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Presenter;->mFacets:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Presenter;->mFacets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
