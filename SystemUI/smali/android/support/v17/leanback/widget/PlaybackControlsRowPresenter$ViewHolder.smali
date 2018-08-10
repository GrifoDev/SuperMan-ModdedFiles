.class public Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackControlsRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;
    }
.end annotation


# instance fields
.field mBgView:Landroid/view/View;

.field final mBottomSpacer:Landroid/view/View;

.field final mCard:Landroid/view/ViewGroup;

.field final mCardRightPanel:Landroid/view/ViewGroup;

.field mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

.field final mControlsDock:Landroid/view/ViewGroup;

.field mControlsDockMarginEnd:I

.field mControlsDockMarginStart:I

.field mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

.field final mDescriptionDock:Landroid/view/ViewGroup;

.field public final mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mImageView:Landroid/widget/ImageView;

.field final mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

.field final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field mSelectedItem:Ljava/lang/Object;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mSpacer:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    sget v0, Landroid/support/v17/leanback/R$id;->controls_card:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->controls_card_right_panel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/R$id;->description_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->secondary_controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->spacer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    sget v0, Landroid/support/v17/leanback/R$id;->bottom_spacer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBottomSpacer:Landroid/view/View;

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method dispatchItemSelection()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    invoke-interface {v0, v2, v2, p0, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->getPrimaryPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    return-object v2

    :cond_4
    move-object v2, v3

    goto :goto_2
.end method

.method setOutline(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->getInstance()Landroid/support/v17/leanback/widget/RoundedRectHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->getInstance()Landroid/support/v17/leanback/widget/RoundedRectHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    :cond_1
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    return-void
.end method
