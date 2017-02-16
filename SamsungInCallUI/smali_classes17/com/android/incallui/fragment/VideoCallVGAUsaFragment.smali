.class public Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAUsaFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallVGAUsaFragment"


# instance fields
.field protected mDisplayImage:Landroid/widget/ImageView;

.field private mEpdgNotifyBannerView:Landroid/view/View;

.field private mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoBanner:Landroid/view/View;

.field private mEpdgNotifyInfoText:Landroid/widget/TextView;

.field private mIsShowingDisplayAsGrayImage:Z

.field private mIsShowingPreviewAsGrayImage:Z

.field protected mPreviewImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    .line 61
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    .line 65
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    return-void
.end method

.method private checkAndSetGrayImage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 448
    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausePreviewState(I)Z

    move-result v1

    .line 451
    .local v1, "needToShowPreviewAsGrayImage":Z
    if-eqz v1, :cond_3

    .line 452
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-nez v2, :cond_2

    .line 453
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    .line 463
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v0

    .line 464
    .local v0, "needToShowDisplayAsGrayImage":Z
    if-eqz v0, :cond_5

    .line 465
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-nez v2, :cond_4

    .line 466
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    .line 470
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->isShowingPreparingAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    .line 479
    .end local v0    # "needToShowDisplayAsGrayImage":Z
    .end local v1    # "needToShowPreviewAsGrayImage":Z
    :cond_1
    :goto_2
    return-void

    .line 455
    .restart local v1    # "needToShowPreviewAsGrayImage":Z
    :cond_2
    const-string v2, "showPreviewAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_0

    .line 468
    .restart local v0    # "needToShowDisplayAsGrayImage":Z
    :cond_4
    const-string v2, "showDisplayAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :cond_5
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-eqz v2, :cond_1

    .line 475
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_2
.end method

.method private inflateEpdgNodifyBanner()V
    .locals 4

    .prologue
    .line 404
    const-string v2, "support_vowifi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1003ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    .line 410
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 415
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f10034d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    .line 416
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f10028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    .line 419
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 422
    .local v1, "epdgNotifyInfoBannerLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 423
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private showDisplayAsGrayImage(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "image_file":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v2, 0x7f1003a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 489
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedSurfaceImage(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 491
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDisplayAsGrayImage - SHOW  image_file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    .line 501
    const-string v1, "showDisplayAsGrayImage - HIDE "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showEpdgNotifyBanner()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 170
    const-string v1, "support_vowifi"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasActiveEpdgCall()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const v2, 0x7f090307

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "showEpdgNotifyBanner - VISIBLE"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 184
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 185
    const-string v1, "showEpdgNotifyBanner - GONE"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPreviewAsGrayImage(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "image_file":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v2, 0x7f1003a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    .line 512
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedSurfaceImage(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 514
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPreviewAsGrayImage - SHOW  image_file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    .line 524
    const-string v1, "showPreviewAsGrayImage - HIDE "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setMyProfileImage()V

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updatePrimaryImage()V

    .line 105
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->restartVideoBanner()V

    .line 108
    :cond_0
    return-void
.end method

.method protected getDisplayLocation()I
    .locals 3

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 287
    .local v1, "state":I
    const/4 v0, 0x3

    .line 288
    .local v0, "displayLocatoin":I
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const/4 v0, 0x0

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const/4 v0, 0x2

    goto :goto_0

    .line 298
    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 299
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 303
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 305
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 308
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 309
    const/4 v0, 0x4

    goto :goto_0

    .line 311
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 315
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    .line 320
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 323
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isShowGraySurface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 3

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 337
    .local v1, "state":I
    const/4 v0, 0x4

    .line 338
    .local v0, "previewLocation":I
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    const/4 v0, 0x2

    goto :goto_0

    .line 343
    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 344
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    const/4 v0, 0x3

    .line 350
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 362
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 363
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/4 v0, 0x3

    goto :goto_0

    .line 366
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isShowGraySurface()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f10036b

    .line 561
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 562
    .local v5, "shadow":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 563
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveOneWayTx(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 564
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    move-object v4, v6

    check-cast v4, Landroid/view/TextureView;

    .line 566
    .local v4, "nearEndView":Landroid/view/TextureView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/TextureView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 567
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 597
    .end local v4    # "nearEndView":Landroid/view/TextureView;
    .restart local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v5

    .line 569
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    const v6, 0x7f1003a6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    .line 571
    .local v0, "farEndView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 573
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 574
    .local v1, "farEndViewBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 575
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 579
    .end local v0    # "farEndView":Landroid/widget/ImageView;
    .end local v1    # "farEndViewBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveOneWayRx(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 580
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 581
    const v6, 0x7f1003a8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v3, v6

    check-cast v3, Landroid/widget/ImageView;

    .line 582
    .local v3, "nearEndPhotoView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 583
    invoke-virtual {v3}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 584
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 585
    .local v2, "nearEndPhotoBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 586
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 589
    .end local v2    # "nearEndPhotoBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "nearEndPhotoView":Landroid/widget/ImageView;
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 590
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    move-object v4, v6

    check-cast v4, Landroid/view/TextureView;

    .line 591
    .restart local v4    # "nearEndView":Landroid/view/TextureView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/TextureView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 592
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5    # "shadow":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected getVideoStateMessage()I
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    .line 213
    .local v0, "messageType":I
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    const/16 v0, 0xf

    goto :goto_0

    .line 217
    :cond_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 221
    const/16 v0, 0x9

    .line 265
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    const/16 v0, 0x10

    .line 268
    :cond_4
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 269
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 270
    const/4 v0, 0x7

    .line 277
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_7
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    const/16 v0, 0xa

    goto :goto_1

    .line 227
    :cond_8
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 228
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 230
    const/16 v0, 0x9

    goto :goto_1

    .line 231
    :cond_9
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const/16 v0, 0xa

    goto :goto_1

    .line 235
    :cond_a
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    const/4 v0, 0x6

    goto/16 :goto_1

    .line 239
    :cond_b
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 240
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    .line 241
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 242
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 244
    :cond_c
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 245
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 246
    const/4 v0, 0x5

    goto/16 :goto_1

    .line 248
    :cond_d
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 249
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 250
    :cond_e
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 251
    const/4 v0, 0x4

    goto/16 :goto_1

    .line 252
    :cond_f
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 256
    :cond_10
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 258
    const/16 v0, 0x11

    goto/16 :goto_1

    .line 259
    :cond_11
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 260
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 261
    :cond_12
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 273
    :cond_13
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    const/16 v0, 0x8

    goto/16 :goto_2
.end method

.method public hideView()V
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "saveGrayImage - Downgraded"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideView()V

    .line 167
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->inflateEpdgNodifyBanner()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsUsingPersonalPhoto:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setMyProfileImage()V

    .line 92
    return-void
.end method

.method protected needToHideSmallView()Z
    .locals 2

    .prologue
    .line 602
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v0

    .line 603
    .local v0, "needToHide":Z
    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getPIPVisiblity()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 604
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    .line 392
    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 393
    .local v0, "show":Z
    :goto_0
    if-nez v0, :cond_1

    .line 394
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    .line 400
    :cond_1
    :goto_1
    return v0

    .end local v0    # "show":Z
    :cond_2
    move v0, v1

    .line 392
    goto :goto_0

    .line 397
    .restart local v0    # "show":Z
    :cond_3
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v2

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 2

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "show":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    .line 384
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 386
    :cond_1
    :goto_0
    return v0

    .line 384
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 146
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryVideoContext()Lcom/android/incallui/VideoContext;

    move-result-object v0

    .line 148
    .local v0, "videoContext":Lcom/android/incallui/VideoContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 149
    const-string v1, "saveGrayImage - onCallObjectChanged"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 154
    .end local v0    # "videoContext":Lcom/android/incallui/VideoContext;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    .line 155
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 97
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onPause()V

    .line 74
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 76
    const-string v0, "saveGrayImage - onPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 81
    :cond_0
    return-void
.end method

.method public onVideoStateChanged()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne v0, v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndControlFarEndPhoto()V

    .line 203
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndControlNearEndPhoto()V

    .line 204
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndSetGrayImage()V

    .line 205
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getVideoStateMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setVideoLocaton()V

    .line 207
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showEpdgNotifyBanner()V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 112
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 113
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 115
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->needToShowDataDialog(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    .line 117
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->setDataDialogAsShown()V

    .line 122
    :cond_1
    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryVideoContext()Lcom/android/incallui/VideoContext;

    move-result-object v1

    .line 125
    .local v1, "videoContext":Lcom/android/incallui/VideoContext;
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 127
    const-string v2, "saveGrayImage - Call State is ONHOLD"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    .line 141
    .end local v1    # "videoContext":Lcom/android/incallui/VideoContext;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    .line 142
    return-void

    .line 131
    .restart local v1    # "videoContext":Lcom/android/incallui/VideoContext;
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    const-string v2, "saveGrayImage - SecVideoState has HOLDING_THE_OTHER_PARTY"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    .line 135
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    goto :goto_0
.end method

.method public setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 531
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v2

    .line 532
    .local v2, "isLandscape":Z
    if-eqz p2, :cond_5

    .line 533
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    const/4 v1, 0x1

    .line 535
    .local v1, "isLandImage":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 536
    if-eqz v1, :cond_2

    .line 537
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 548
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f017f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 534
    .end local v1    # "isLandImage":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 539
    .restart local v1    # "isLandImage":Z
    :cond_2
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 542
    :cond_3
    if-eqz v1, :cond_4

    .line 543
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 545
    :cond_4
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 550
    .end local v1    # "isLandImage":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 551
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 554
    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 553
    :cond_6
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    .line 430
    sparse-switch p1, :sswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :sswitch_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    .line 434
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_0

    .line 439
    :sswitch_1
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    .line 441
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
