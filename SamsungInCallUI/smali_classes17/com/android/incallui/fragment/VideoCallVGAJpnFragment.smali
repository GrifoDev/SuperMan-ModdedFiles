.class public Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAJpnFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private setNoVideoImage()V
    .locals 5

    const v4, 0x7f02012e

    const v3, 0x7f02012d

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoVideoImage isLandscape = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private showFarEndNovideoImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNoVideoImage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNoVideoImage... state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showFarEndNovideoImage(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->setNoVideoImage()V

    :cond_0
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->setNoVideoImage()V

    :cond_2
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->updateNoVideoImage(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchVideoDisplay()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->setVideoLocaton()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showFarEndNovideoImage(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showFarEndNovideoImage(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
