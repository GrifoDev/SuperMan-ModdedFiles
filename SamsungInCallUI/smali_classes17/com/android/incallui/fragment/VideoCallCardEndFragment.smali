.class public Lcom/android/incallui/fragment/VideoCallCardEndFragment;
.super Lcom/android/incallui/fragment/VideoCallCardBaseFragment;
.source "VideoCallCardEndFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardEndFragment"


# instance fields
.field mIsLandscape:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    return-void
.end method

.method private hasJanskyInfo()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;)V
    .locals 13

    const v12, 0x7f0a0287

    const v11, 0x7f0a011c

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    move v2, v5

    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_8

    :cond_2
    move v1, v5

    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    :cond_3
    :goto_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0290

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a032f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto/16 :goto_1

    :cond_7
    move v2, v6

    goto/16 :goto_2

    :cond_8
    move v1, v6

    goto/16 :goto_3

    :cond_9
    if-nez v3, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a008d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_c

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0564

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    goto/16 :goto_4
.end method

.method private showCallInfoContainer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "VideoCallCardEndFragment"

    const-string v1, "showCallInfoContainer container is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMultiWindowLayout()V
    .locals 9

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "updateMultiWindowLayout endcall"

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v7, v2, v5

    if-nez v7, :cond_2

    const-string v7, "updateMultiWindowLayout split endcall"

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    const/4 v7, 0x3

    const v8, 0x7f1001d7

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0588

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v7, 0x0

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePrimaryBanner(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateLayoutForCallState(I)V

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->checkAndUpdateModifyDummyState()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateJanskyInfo()V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateFullscreenMode(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showSecondaryContainer(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateTextColor(I)V

    return-void

    :cond_5
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0

    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallCardEndFragment - onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateLayoutForCallState(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    const v1, 0x7f04011e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f100254

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f100198

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f1000e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x7f10033e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    const v1, 0x7f10010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    const v1, 0x7f1001da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    const v1, 0x7f1000a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f100191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v1, 0x7f100193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f100197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v1, 0x7f100199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mElapsedTime:Landroid/widget/TextView;

    const v1, 0x7f1000a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    const v1, 0x7f100341

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mMoreButtonContainer:Landroid/view/View;

    const v1, 0x7f100256

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const v1, 0x7f100342

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->inflateVideoTypeIconLayout()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateMultiWindowLayout()V

    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f10032a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateIndicatorAreaForGroupCall()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    :cond_7
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 2

    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updatePrimaryBanner(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 7

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    move v2, p2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v2, v5

    cmpg-float v5, v2, v0

    if-gez v5, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method public setPrimaryVisible(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "VideoCallCardEndFragment"

    const-string v2, "setPrimaryVisible : banner is null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_1
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showSecondaryContainer(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0

    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryDiver:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryDiver:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method protected updateLayoutForCallState(I)V
    .locals 7

    const/16 v6, 0xf

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x11

    const v5, 0x7f100199

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0586

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

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

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

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

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_6

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
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    const/16 v0, 0xa

    if-ne v0, p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    :cond_4
    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_6
    if-ne p1, v4, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    :cond_7
    if-eq p1, v1, :cond_8

    if-ne p1, v5, :cond_1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method
