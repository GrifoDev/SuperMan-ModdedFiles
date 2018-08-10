.class Landroid/support/v17/leanback/widget/ControlBarPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static sChildMarginDefault:I

.field private static sControlIconWidth:I


# instance fields
.field mDefaultFocusToMiddle:Z

.field private mLayoutResourceId:I

.field mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    iput p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method getChildMarginDefault(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    return v0
.end method

.method getControlIconWidth(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_control_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object v0, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    iput-object v3, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    iput-object v3, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    return-void
.end method

.method public setBackgroundColor(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;I)V
    .locals 1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method setDefaultFocusToMiddle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    return-void
.end method

.method public setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    return-void
.end method
