.class public Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.super Landroid/support/v17/leanback/widget/Parallax;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;,
        Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;,
        Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax",
        "<",
        "Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;",
        ">;"
    }
.end annotation


# instance fields
.field mIsVertical:Z

.field mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mRecylerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Parallax;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;-><init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;-><init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->createProperty(Ljava/lang/String;I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    if-ne v3, v1, :cond_3

    :goto_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public updateValues()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    check-cast v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->updateValue(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/widget/Parallax;->updateValues()V

    return-void
.end method
