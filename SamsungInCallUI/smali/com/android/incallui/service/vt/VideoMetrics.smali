.class public Lcom/android/incallui/service/vt/VideoMetrics;
.super Ljava/lang/Object;


# static fields
.field public static final DP_PREVIEW_MIN_HEIGHT:I = 0x54

.field public static final DP_PREVIEW_MIN_WIDTH:I = 0x3f

.field public static final DP_SMALL_OFFSET_X:I = 0x18

.field public static final DP_SMALL_OFFSET_X_LAND:I = 0x22

.field public static final DP_SMALL_OFFSET_Y:I = 0xc

.field private static final TAG:Ljava/lang/String; = "VideoMetrics - "


# instance fields
.field private mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

.field private mDensity:F

.field private mIsDeviceLandScape:Z

.field private mIsInMultiWindowMode:Z

.field private mIsPhoneVideoUX:Z

.field private mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

.field private mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

.field private mVideoZone:Lcom/android/incallui/util/VideoTemplate;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCardMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsPhoneVideoUX:Z

    return-void
.end method

.method private getBigTempleteAlign(Lcom/android/incallui/service/vt/VideoDimension;)I
    .locals 3

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioPortrait()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->isCenterAlign()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/util/VideoTemplate;->getHeightDifference(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getResizeHeight(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private getResizeWidth(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private getSmallTempleteAlignedY(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteOffsetY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private isCenterAlign()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    :cond_0
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-boolean v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsInMultiWindowMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioLandscape()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteOffsetX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteOffsetY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->zoom(F)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteMinWidth(Lcom/android/incallui/util/VideoTemplate;)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v3

    if-ge v3, v2, :cond_1

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->zoom(F)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->isLandscape()Z

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->invertSize()V

    :cond_2
    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioPortrait()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method public getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTemplete(Lcom/android/incallui/service/vt/VideoDimension;)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getBigTemplete(Lcom/android/incallui/service/vt/VideoDimension;)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTempleteAlign(Lcom/android/incallui/service/vt/VideoDimension;)I

    move-result v0

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioPortrait()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getHeightDifference(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    goto :goto_1
.end method

.method public getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTemplete(Lcom/android/incallui/service/vt/VideoDimension;)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    goto :goto_0
.end method

.method public getPixelsFromDP(I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getResizeTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getResizeWidth(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/service/vt/VideoMetrics;->getResizeHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/util/VideoTemplate;->resize(II)V

    return-object v0
.end method

.method public getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getBannerCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteAlignedY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getCameraEffectCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteAlignedY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getMultipartyBannerCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteAlignedY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getMultipartyCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteAlignedY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBaseSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteAlignedY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallTempleteMinWidth(Lcom/android/incallui/util/VideoTemplate;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42a80000    # 84.0f

    iget v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x427c0000    # 63.0f

    iget v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getSmallTempleteOffsetX()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoMetrics;->getPixelsFromDP(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoMetrics;->getPixelsFromDP(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSmallTempleteOffsetY()I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoMetrics;->getPixelsFromDP(I)I

    move-result v0

    return v0
.end method

.method public getSmallTempleteWeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsPhoneVideoUX:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v0

    goto :goto_0
.end method

.method public setPeerDimension(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMetrics - setPeerDimension - Dimension : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    :cond_0
    return-void
.end method

.method public setPreviewDimension(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMetrics - setPreviewDimension - Dimension : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    iput v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mDensity:F

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsInMultiWindowMode:Z

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsDeviceLandScape:Z

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneVideoUX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsPhoneVideoUX:Z

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mCardMetrics:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/vt/VideoCardMetrics;->update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V

    iget v3, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v2, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getContentViewHeight()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v0, v1}, Lcom/android/incallui/util/VideoTemplate;->set(FF)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoMetrics;->mVideoZone:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/util/VideoTemplate;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->canUseNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method
