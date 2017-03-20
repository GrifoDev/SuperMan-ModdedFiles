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
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    .line 83
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 84
    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 13
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 338
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 340
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 342
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v1

    .line 344
    .local v1, "callInfoContainer":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .local v3, "infoLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 347
    .local v4, "infoMarginTop":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    .line 348
    .local v6, "isMobileKeyboardCovered":Z
    if-eqz v6, :cond_4

    .line 349
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

    .line 350
    :cond_0
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    :cond_1
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_2
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_3
    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 354
    const/16 v10, 0xd

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 357
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v9

    .line 358
    .local v9, "photoContainer":Landroid/view/View;
    const-string v10, "ims_call_message"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "cnap_supplementary_service"

    .line 359
    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 360
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

    .line 361
    .local v5, "isEmpty":Z
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

    .line 362
    .local v8, "isRinigng":Z
    :goto_1
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_a

    const/4 v7, 0x1

    .line 363
    .local v7, "isPhotoVisible":Z
    :goto_2
    if-nez v5, :cond_7

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    .line 364
    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 365
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0322

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 368
    .end local v5    # "isEmpty":Z
    .end local v7    # "isPhotoVisible":Z
    .end local v8    # "isRinigng":Z
    :cond_7
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 369
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void

    .line 360
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 361
    .restart local v5    # "isEmpty":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 362
    .restart local v8    # "isRinigng":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private hideCallForwardingPanel()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideCallerInfoOrgView()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 610
    :cond_0
    return-void
.end method

.method private needToShowCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "needToShow":Z
    const-string v1, "show_forwarding_number"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 577
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

    .line 578
    return v0

    .line 572
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->isAnswerProcessing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {p2}, Lcom/android/incallui/util/InCallUtils;->isForwardingPresentation(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 139
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

    .line 140
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    :cond_1
    const v0, 0x7f100320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 145
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 146
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    .line 143
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    :cond_2
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const v0, 0x7f100317

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f100318

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    .line 155
    :cond_3
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ims_call_message"

    .line 156
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    .line 158
    const v0, 0x7f100215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    .line 159
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 165
    :cond_5
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v0, :cond_6

    .line 167
    const v0, 0x7f10023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    .line 168
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 174
    :cond_6
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_7

    .line 176
    const v0, 0x7f1002dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 180
    const v0, 0x7f100208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_9

    .line 185
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    .line 186
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 188
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 192
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 193
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    .line 190
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    :cond_9
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 232
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 233
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v4, "eri_info_label_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V

    .line 236
    :cond_0
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    if-eqz v0, :cond_2

    .line 239
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

    .line 240
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_1

    .line 241
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 243
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

    .line 244
    const-string v4, "CallCardCallerInfoView"

    const-string v5, "entry cdnipNumber is null. use SecCallExtra"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    .line 251
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_2
    const-string v4, "ims_call_message"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    :cond_3
    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 255
    .restart local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_d

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 256
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    .line 257
    :cond_4
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 267
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_5
    :goto_0
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 268
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->showNsriSecureCallText(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 271
    :cond_6
    const-string v4, "show_forwarding_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 275
    :cond_7
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "feature_kor_open"

    .line 276
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 278
    :cond_8
    if-eqz v0, :cond_a

    .line 279
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 281
    const/4 v4, 0x4

    if-ne p2, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateIntCalNoti(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    .line 286
    .end local v2    # "number":Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_b

    .line 287
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 289
    :cond_b
    return-void

    .line 258
    .restart local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_c
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 259
    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_d
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 262
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v6, 0x0

    .line 519
    const-string v3, "CallCardCallerInfoView"

    const-string v4, "setCallerInfoForwardingView"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 521
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 522
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->hideCallForwardingPanel()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->needToShowCallerInfoForwardingView(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 528
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->hideCallForwardingPanel()V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/util/NameNumberUtils;->getForwardingNumber(Lcom/android/incallui/Call;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "cfNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 535
    iput-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingNumber:Ljava/lang/String;

    .line 537
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    .line 538
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1000b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    .line 539
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 542
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 543
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    .line 544
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 548
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v2, "cfText":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 552
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 201
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 202
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_0

    .line 203
    const-string v2, "CallCardCallerInfoView"

    const-string v3, "primaryCall is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_spr"

    .line 206
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-static {v2, p2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 210
    :cond_1
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 211
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    .line 212
    :cond_2
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 216
    :cond_3
    :goto_0
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    if-eqz v0, :cond_5

    .line 218
    if-eqz p2, :cond_4

    .line 219
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 221
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

    .line 222
    const-string v2, "CallCardCallerInfoView"

    const-string v3, "entry cdnipNumber is null. use SecCallExtra"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    .line 228
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 229
    :cond_6
    return-void

    .line 213
    :cond_7
    if-eqz p2, :cond_3

    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPrimaryCdnip(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 447
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f10023c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    .line 449
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 454
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 455
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    .line 459
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    :cond_3
    move v1, v4

    .line 460
    .local v1, "isIncoming":Z
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 461
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f10023e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    .line 462
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    .line 465
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 466
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 467
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 464
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 468
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "isIncoming":Z
    :cond_4
    move v1, v3

    .line 459
    goto :goto_1

    .line 472
    .restart local v1    # "isIncoming":Z
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCdnipNumberStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryMessage(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    .line 418
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "photoContainer":Landroid/view/View;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 424
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 426
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 428
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

    .line 429
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    .line 430
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    .line 433
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

    .line 432
    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 434
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 435
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 437
    const-string v2, "CallCardCallerInfoView"

    const-string v3, "setPrimaryMessage"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 444
    :cond_2
    :goto_0
    return-void

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNsriSecureCallText(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    .line 501
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 503
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 507
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "- show secure call noti"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 509
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mNsriSecureCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateColor(Landroid/widget/TextView;IZ)V
    .locals 11
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "state"    # I
    .param p3, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 302
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v8, v8, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v8, :cond_1

    .line 303
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 304
    .local v2, "bannerSubTextColor":I
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 305
    .local v1, "bannerDefaultSubTextColor":I
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eq v8, p1, :cond_2

    const/16 v8, 0x8

    if-ne p2, v8, :cond_2

    .line 306
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 310
    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 311
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    .line 312
    .local v5, "isBackgroundShowing":Z
    :goto_1
    if-eqz v5, :cond_4

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x9

    if-ne p2, v8, :cond_4

    .line 313
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "bannerDefaultSubTextColor":I
    .end local v2    # "bannerSubTextColor":I
    .end local v5    # "isBackgroundShowing":Z
    :cond_1
    :goto_2
    return-void

    .line 308
    .restart local v1    # "bannerDefaultSubTextColor":I
    .restart local v2    # "bannerSubTextColor":I
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_3
    move v5, v7

    .line 311
    goto :goto_1

    .line 315
    .restart local v5    # "isBackgroundShowing":Z
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v8

    if-nez v8, :cond_1

    .line 318
    if-eqz p3, :cond_5

    .line 319
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 320
    .local v4, "duration":I
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

    .line 321
    .local v3, "colorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    new-instance v6, Lcom/android/incallui/fragment/view/CallCardCallerInfoView$1;

    invoke-direct {v6, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardCallerInfoView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 329
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 331
    .end local v3    # "colorAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "duration":I
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 478
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isShowERI4Vowifi()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 480
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 496
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 483
    .local v2, "mMinHeightForEri":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getDisplayHeight()I

    move-result v5

    if-ge v5, v2, :cond_2

    move v1, v3

    .line 484
    .local v1, "isMultiWindow":Z
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    .line 485
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    :goto_2
    const-string v4, "enable_operator_name"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
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

    .end local v1    # "isMultiWindow":Z
    :cond_2
    move v1, v4

    .line 483
    goto :goto_1

    .line 487
    .restart local v1    # "isMultiWindow":Z
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 492
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateIntCalNoti(Lcom/android/incallui/fragment/CallCardFragment;Z)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    .line 615
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 620
    if-eqz p2, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    .line 622
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mIntCallNotiStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    .line 131
    :cond_0
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 113
    :cond_0
    return-void
.end method

.method public getERIHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 663
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewStub;->measure(II)V

    .line 665
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getMeasuredHeight()I

    move-result v0

    .line 667
    :cond_0
    return v0
.end method

.method public isCityIdVisible()Z
    .locals 1

    .prologue
    .line 647
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

    .prologue
    .line 659
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

    .prologue
    .line 651
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

    .prologue
    .line 643
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

    .prologue
    .line 655
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

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v1, v1, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 119
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 123
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setCallState(Lcom/android/incallui/fragment/CallCardFragment;I)V

    .line 98
    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    .line 99
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setPrimaryCityId(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "cityId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 373
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

    .line 374
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

    .line 376
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 377
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "mCityId is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 386
    :cond_3
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "mCityId is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 404
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 582
    if-nez p2, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 588
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_3

    .line 589
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    .line 590
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 591
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

    .line 592
    const-string v2, "CallCardCallerInfoView"

    const-string v3, "updateCallerInfoOrgView"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 593
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 595
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 601
    .end local v1    # "info":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateEri()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    const-string v0, "CallCardCallerInfoView"

    const-string v1, "updateEri"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mOldCallState:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEriInfoText(Lcom/android/incallui/fragment/CallCardFragment;I)V

    goto :goto_0
.end method

.method public updateTextColor(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mEriInfoText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCityId:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMkCityId:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mSlash:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallOrgInfoText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateColor(Landroid/widget/TextView;IZ)V

    .line 299
    :cond_6
    return-void
.end method
