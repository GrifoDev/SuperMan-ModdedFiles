.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    }
.end annotation


# static fields
.field static final sHandler:Landroid/os/Handler;

.field private static sTmpRect:Landroid/graphics/Rect;


# instance fields
.field mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private mActionsBackgroundColor:I

.field private mActionsBackgroundColorSet:Z

.field private mAlignmentMode:I

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field final mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

.field final mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field protected mInitialState:I

.field private mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

.field private mParticipatingEntranceTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getLayoutResourceId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v2, p0, v1, v3, v4}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v4, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v3, v4, v2, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->setContext(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    iget v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    new-instance v3, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    invoke-direct {v3, p0, v2}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v3, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v0, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/support/v17/leanback/R$id;->details_overview_actions_background:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->getInstance()Landroid/support/v17/leanback/widget/RoundedRectHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v4, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;

    invoke-direct {v4, p0, v2}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    return-object v2
.end method

.method protected getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_fullwidth_details_overview:I

    return v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyOnBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;->onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v2, v3, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onBind()V

    return-void
.end method

.method protected onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v2

    iget-object v1, v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_description_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 15

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-ne v11, v5, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v13, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v12

    check-cast v12, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    invoke-virtual {v13, v14, v12}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v12

    iget-object v12, v12, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v6, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget v12, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    packed-switch v12, :pswitch_data_0

    if-eqz v5, :cond_5

    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v3, v6

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_7

    const/4 v12, 0x0

    :goto_3
    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v5, :cond_8

    const/4 v12, 0x0

    :goto_4
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int v3, v6, v12

    goto :goto_2

    :pswitch_0
    if-eqz v5, :cond_6

    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    sub-int v4, v12, v6

    move v3, v6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_7
    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_3

    :cond_8
    sget v12, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v2}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onUnbind()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    iput p2, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :cond_0
    return-void
.end method
