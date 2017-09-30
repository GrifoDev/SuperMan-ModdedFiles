.class public Lcom/android/incallui/fragment/VideoCallCardEndFragment;
.super Lcom/android/incallui/fragment/VideoCallCardBaseFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardEndFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    return-void
.end method

.method private updatePrimaryBanner(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateFullscreenMode(Z)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateTextColor(I)V

    return-void

    :cond_2
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initializeCallCardView(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->initializeCallCardView(Landroid/view/View;)V

    const v0, 0x7f1002d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f10020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f10012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    const v0, 0x7f1003d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1
    const v0, 0x7f10014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f100251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_2
    const v0, 0x7f10020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f100203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f10024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mMoreButtonContainer:Landroid/view/View;

    const v0, 0x7f1002d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1003bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04013b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateIndicatorAreaForGroupCall()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 1

    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updatePrimaryBanner(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updatePrimaryContainerLayout()V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v0, "setPrimaryVisible : banner is null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_0
.end method

.method protected showCallInfoContainer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicatorAreaForGroupCall()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x3

    const v4, 0x7f10024e

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0637

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected updateMultiWindowLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "updateMultiWindowLayout endcall"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    const-string v2, "updateMultiWindowLayout split endcall"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    const/4 v2, 0x3

    const v3, 0x7f10024e

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a062f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected updatePrimaryContainerLayout()V
    .locals 7

    const/16 v6, 0xf

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x11

    const v5, 0x7f100210

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a062d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_1
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2
.end method

.method protected updatePrimaryContainerVisibilityForCallState(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryContainerVisibilityForCallState(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p1, v5, :cond_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_5
    if-eq p1, v1, :cond_6

    if-ne p1, v5, :cond_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method
