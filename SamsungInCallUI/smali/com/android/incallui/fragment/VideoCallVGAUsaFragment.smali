.class public Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallVGAUsaFragment"


# instance fields
.field private mDisplayImage:Landroid/widget/ImageView;

.field private mEpdgNotifyBannerView:Landroid/view/View;

.field private mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoBanner:Landroid/view/View;

.field private mEpdgNotifyInfoText:Landroid/widget/TextView;

.field private mIsShowingDisplayAsGrayImage:Z

.field private mIsShowingPreviewAsGrayImage:Z

.field private mPreviewImage:Landroid/widget/ImageView;


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
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausePreviewState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->isShowingPreparingAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "showPreviewAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    const-string v0, "showDisplayAsGrayImage - SHOW  : keep previous gray image"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_4
.end method

.method private inflateEpdgNodifyBanner()V
    .locals 3

    const-string v0, "support_vowifi"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100444

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v1, 0x7f100315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private showDisplayAsGrayImage(Z)V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100440

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

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

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDisplayAsGrayImage - SHOW  image_file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showDisplayAsGrayImage - HIDE "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    goto :goto_0
.end method

.method private showEpdgNotifyBanner()V
    .locals 3

    const/16 v1, 0x8

    const-string v0, "support_vowifi"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasActiveEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const v2, 0x7f09039f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "showEpdgNotifyBanner - VISIBLE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "showEpdgNotifyBanner - GONE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPreviewAsGrayImage(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100443

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedSurfaceImage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPreviewAsGrayImage - SHOW  image_file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showPreviewAsGrayImage - HIDE "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

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

.method public deleteSurfaceImage(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_display_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isExistFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurfaceImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFileInFilesDir(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_preview_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected getDisplayLocation()I
    .locals 5

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_8

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->canShowGrayImage()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v0, 0x4

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_6
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

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->canShowGrayImage()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method protected getVideoStateMessage()I
    .locals 7

    const/16 v0, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v1

    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_18

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x10

    :cond_5
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v4

    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0xa

    goto :goto_1

    :cond_9
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v6}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v0

    :cond_a
    :goto_4
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_b
    move v1, v2

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x6

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    if-eq v0, v5, :cond_4

    move v1, v2

    goto/16 :goto_2

    :cond_f
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x5

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v3

    goto/16 :goto_2

    :cond_11
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x11

    goto/16 :goto_2

    :cond_14
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_15
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_16
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v5

    goto/16 :goto_3

    :cond_17
    move v1, v0

    goto/16 :goto_2

    :cond_18
    move v0, v1

    goto/16 :goto_1
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
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getPIPVisiblity()Z

    move-result v0

    if-nez v0, :cond_1

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_2

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
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingPreviewAsGrayImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingDisplayAsGrayImage:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    :cond_1
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

.method public onVideoContextChanged()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showEpdgNotifyBanner()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->checkAndSetGrayImage()V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onVideoContextChanged()V

    goto :goto_0
.end method

.method public setDisplayReady(Z)V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsDisplayReady:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveDisplayImage()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDisplayReady(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    goto :goto_0
.end method

.method public setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0203c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public setPreviewReady(Z)V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsPreviewReady:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->savePreviewImage()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewReady(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteSurfaceImage(I)V

    goto :goto_0
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->needToShowDataDialog(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->setDataDialogAsShown()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    return-void
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

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showPreviewAsGrayImage(Z)V

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->showDisplayAsGrayImage(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
