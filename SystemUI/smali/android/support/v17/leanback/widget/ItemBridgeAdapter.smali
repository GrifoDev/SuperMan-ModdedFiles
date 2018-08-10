.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProviderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FacetProvider;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v4, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v4, v1, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    :cond_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v2

    goto :goto_0
.end method

.method public getPresenterMapper()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method protected onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Presenter;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v5, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->createWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    iget-object v6, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5, v3, v6}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->wrap(Landroid/view/View;Landroid/view/View;)V

    :goto_0
    new-instance v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {v4, p0, v0, v3, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Landroid/support/v17/leanback/widget/Presenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v5, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    iget-object v5, v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v5, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v5, v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    invoke-virtual {v2}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v5, v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    invoke-interface {v5, v3}, Landroid/support/v17/leanback/widget/FocusHighlightHandler;->onInitializeView(Landroid/view/View;)V

    :cond_2
    return-object v4

    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iget-object v3, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method protected onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    iput-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->hasStableIds()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setHasStableIds(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    return-void
.end method

.method public setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPresenterMapper(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-void
.end method

.method public setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-void
.end method
