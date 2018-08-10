.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

.field mControlsContainer:Landroid/view/View;

.field mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

.field mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    sget v0, Landroid/support/v17/leanback/R$id;->controls_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    sget v0, Landroid/support/v17/leanback/R$id;->control_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Couldn\'t find control_bar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-boolean v1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBar;->setDefaultFocusToMiddle(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    new-instance v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBar;->setOnChildFocusedListener(Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;)V

    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method private bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {p3, v3}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    new-instance v3, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;

    invoke-direct {v3, p0, p1, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;ILandroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p3, v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v3, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v4, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ControlBar;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p3, v2, v0}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method showControls(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ControlBar;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v5, v2}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-lt v5, v1, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-lt v3, v1, :cond_2

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v5, v3}, Landroid/support/v17/leanback/widget/ControlBar;->removeViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    const/4 v5, 0x7

    if-ge v4, v5, :cond_3

    invoke-direct {p0, v4, v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ControlBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getChildMarginFromCenter(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/ControlBar;->setChildMarginFromCenter(I)V

    return-void
.end method
