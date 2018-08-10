.class public Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "AbstractMediaItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mActionViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFocusViewAnimator:Landroid/animation/ValueAnimator;

.field private final mMediaItemActionsContainer:Landroid/view/ViewGroup;

.field private final mMediaItemDetailsView:Landroid/view/View;

.field private final mMediaItemDurationView:Landroid/widget/TextView;

.field private final mMediaItemNameView:Landroid/widget/TextView;

.field final mMediaItemNumberView:Landroid/widget/TextView;

.field final mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

.field final mMediaItemPausedView:Landroid/view/View;

.field final mMediaItemPlayingView:Landroid/view/View;

.field mMediaItemRowActions:[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

.field private final mMediaItemRowSeparator:Landroid/view/View;

.field final mMediaRowView:Landroid/view/View;

.field mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

.field final mSelectorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v3, Landroid/support/v17/leanback/R$id;->mediaRowSelector:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mSelectorView:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemRow:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaRowView:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemDetails:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemDetailsView:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemName:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNameView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemDuration:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemDurationView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaRowSeparator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowSeparator:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemActionsContainer:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemActionsContainer:Landroid/view/ViewGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemDetailsView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemDetailsView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v3, Landroid/support/v17/leanback/R$id;->mediaItemNumberViewFlipper:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$attr;->playbackMediaItemNumberViewFlipperLayout:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v0, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v3, Landroid/support/v17/leanback/R$id;->initial:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->paused:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->playing:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    return-void

    :cond_0
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_media_item_number_view_flipper:I

    goto :goto_0
.end method


# virtual methods
.method public getMediaItemActionsContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemActionsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMediaItemDetailsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemDetailsView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaItemRowSeparator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowSeparator:Landroid/view/View;

    return-object v0
.end method

.method public onBindRowActions()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemActionsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemActionsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    iput-object v8, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowActions:[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/support/v17/leanback/widget/MultiActionsProvider;

    if-eqz v7, :cond_1

    check-cast v6, Landroid/support/v17/leanback/widget/MultiActionsProvider;

    invoke-interface {v6}, Landroid/support/v17/leanback/widget/MultiActionsProvider;->getActions()[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    move-result-object v1

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->getActionPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_1
    return-void

    :cond_2
    iput-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowActions:[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_3

    move v0, v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemActionsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemActionsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, v3, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v3, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    new-instance v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;

    invoke-direct {v8, p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v7, v3, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    new-instance v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;

    invoke-direct {v8, p0, v3, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemActionsContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    const/4 v5, 0x0

    :goto_2
    array-length v7, v1

    if-ge v5, v7, :cond_4

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mActionViewHolders:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v7, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowActions:[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    aget-object v7, v7, v5

    invoke-virtual {v2, v4, v7}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
