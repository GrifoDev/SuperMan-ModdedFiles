.class public Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
.super Ljava/lang/Object;
.source "CallCardCallerInfoView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardCallerInfoView"


# instance fields
.field private mCallForwardingNumber:Ljava/lang/String;

.field private mCallForwardingPanel:Landroid/widget/TextView;

.field private mCallForwardingPanelStub:Landroid/view/ViewStub;

.field private mCallMessageStub:Landroid/view/ViewStub;

.field private mCallOrgInfoStub:Landroid/view/ViewStub;

.field private mCallOrgInfoText:Landroid/widget/TextView;

.field private mCdnipNumberStub:Landroid/view/ViewStub;

.field private mCdnipView:Landroid/widget/TextView;

.field private mCityId:Landroid/widget/TextView;

.field private mEriInfoStub:Landroid/view/ViewStub;

.field private mEriInfoText:Landroid/widget/TextView;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mIntCallNotiStub:Landroid/view/ViewStub;

.field private mIntCallNotiText:Landroid/widget/TextView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMkCityId:Landroid/widget/TextView;

.field private mNsriSecureCallView:Landroid/widget/TextView;

.field private mNsriSecureCallViewStub:Landroid/view/ViewStub;

.field protected mOldCallState:I

.field private mSlash:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_4

    :cond_0
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v10, 0xd

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v9

    const-string v10, "ims_call_message"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "cnap_supplementary_service"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    iget-object v10, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    :cond_6
    const/4 v8, 0x1

    :goto_1
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_a

    const/4 v7, 0x1

    :goto_2
    if-nez v5, :cond_7

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0326

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    :cond_7
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    :cond_a
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private hideCallForwardingPanel()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideCallerInfoOrgView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private needToShowCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "show_forwarding_number"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "CallCardCallerInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowCallerInfoForwardingView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->isAnswerProcessing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->isForwardingPresentation(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "geo_description_disable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const v0, 0x7f10031f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f100317

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    const v0, 0x7f100318

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    :cond_3
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    const v0, 0x7f100215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v0, :cond_6

    const v0, 0x7f10023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_6
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_7

    const v0, 0x7f1002dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_9
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v4, "eri_info_label_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V

    :cond_0
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CallCardCallerInfoView"

    const-string v5, "entry cdnipNumber is null. use SecCallExtra"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    :cond_2
    const-string v4, "ims_call_message"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    :cond_4
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->showNsriSecureCallText(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_6
    const-string v4, "show_forwarding_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_7
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x4

    if-ne p2, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateIntCalNoti(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "CallCardCallerInfoView"

    const-string v4, "setCallerInfoForwardingView"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->hideCallForwardingPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->needToShowCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->hideCallForwardingPanel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/util/NameNumberUtils;->getForwardingNumber(Lcom/android/incallui/Call;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1000b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v2, "CallCardCallerInfoView"

    const-string v3, "primaryCall is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_spr"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-static {v2, p2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    :cond_2
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CallCardCallerInfoView"

    const-string v3, "entry cdnipNumber is null. use SecCallExtra"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_3

    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f10023c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    :cond_3
    move v1, v4

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f10023e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    const-string v2, "CallCardCallerInfoView"

    const-string v3, "setPrimaryMessage"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNsriSecureCallText(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CallCardCallerInfoView"

    const-string v1, "- show secure call noti"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateColor(Landroid/widget/TextView;IZ)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v8, v8, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eq v8, p1, :cond_2

    const/16 v8, 0x8

    if-ne p2, v8, :cond_2

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    :goto_1
    if-eqz v5, :cond_4

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x9

    if-ne p2, v8, :cond_4

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/incallui/fragment/view/CallCardCallerInfoView$1;

    invoke-direct {v6, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardCallerInfoView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isShowERI4Vowifi()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getDisplayHeight()I

    move-result v5

    if-ge v5, v2, :cond_2

    move v1, v3

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v4, "enable_operator_name"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const-string v4, "CallCardCallerInfoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEriInfoText visibility"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateIntCalNoti(Lcom/android/incallui/fragment/CallCardFragment;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 1

    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    :cond_0
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_0
    return-void
.end method

.method public getERIHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewStub;->measure(II)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getMeasuredHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public isCityIdVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEriInfoTextVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMkCityIdVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrgInfoViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v1, v1, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V

    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCityId(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const-string v0, "CallCardCallerInfoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVL_VUX Caller Name ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v0, "CallCardCallerInfoView"

    const-string v1, "mCityId is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "mCityId is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isCityIdVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMkCityIdVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CallCardCallerInfoView"

    const-string v3, "updateCallerInfoOrgView"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateEri()V
    .locals 2

    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "updateEri"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V

    goto :goto_0
.end method

.method public updateTextColor(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    :cond_6
    return-void
.end method
