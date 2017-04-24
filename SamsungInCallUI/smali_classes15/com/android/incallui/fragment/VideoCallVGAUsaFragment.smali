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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    return-void
.end method

.method private checkAndSetGrayImage()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausePreviewState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-nez v2, :cond_2

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-nez v2, :cond_4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->isShowingPreparingAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v2, "showPreviewAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "showDisplayAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_2
.end method

.method private inflateEpdgNodifyBanner()V
    .locals 4

    const-string v2, "support_vowifi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1003ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f10034e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f10028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private showDisplayAsGrayImage(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v2, 0x7f1003a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedSurfaceImage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

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

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    const-string v1, "showDisplayAsGrayImage - HIDE "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showEpdgNotifyBanner()V
    .locals 3

    const/16 v2, 0x8

    const-string v1, "support_vowifi"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasActiveEpdgCall()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const v2, 0x7f090318

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "showEpdgNotifyBanner - VISIBLE"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "showEpdgNotifyBanner - GONE"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPreviewAsGrayImage(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v2, 0x7f1003aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedSurfaceImage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

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

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    const-string v1, "showPreviewAsGrayImage - HIDE "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setMyProfileImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updatePrimaryImage()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->restartVideoBanner()V

    :cond_0
    return-void
.end method

.method protected getDisplayLocation()I
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v0, 0x3

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isShowGraySurface()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v0, 0x4

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isShowGraySurface()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const v7, 0x7f10036c

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveOneWayTx(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    move-object v4, v6

    check-cast v4, Landroid/view/TextureView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/TextureView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f1003a7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveOneWayRx(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f1003a9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v3, v6

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->buildDrawingCache()V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    move-object v4, v6

    check-cast v4, Landroid/view/TextureView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/TextureView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected getVideoStateMessage()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x9

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x10

    :cond_4
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x7

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

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x9

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :cond_a
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto/16 :goto_1

    :cond_b
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x5

    goto/16 :goto_1

    :cond_d
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_e
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_1

    :cond_f
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_10
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x11

    goto/16 :goto_1

    :cond_11
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_12
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_13
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x8

    goto/16 :goto_2
.end method

.method public hideView()V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saveGrayImage - Downgraded"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideView()V

    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->inflateEpdgNodifyBanner()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsUsingPersonalPhoto:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setMyProfileImage()V

    return-void
.end method

.method protected needToHideSmallView()Z
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getPIPVisiblity()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

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

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

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

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-nez v1, :cond_1

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

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 3

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryVideoContext()Lcom/android/incallui/VideoContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "saveGrayImage - onCallObjectChanged"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onPause()V

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

    const-string v0, "saveGrayImage - onPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    :cond_0
    return-void
.end method

.method public onVideoStateChanged()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoState:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndControlFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndControlNearEndPhoto()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndSetGrayImage()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getVideoStateMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setVideoLocaton()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showEpdgNotifyBanner()V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->needToShowDataDialog(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->setDataDialogAsShown()V

    :cond_1
    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryVideoContext()Lcom/android/incallui/VideoContext;

    move-result-object v1

    if-eqz v1, :cond_2

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

    const-string v2, "saveGrayImage - Call State is ONHOLD"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    return-void

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

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "saveGrayImage - SecVideoState has HOLDING_THE_OTHER_PARTY"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    goto :goto_0
.end method

.method public setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f017f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_6
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
