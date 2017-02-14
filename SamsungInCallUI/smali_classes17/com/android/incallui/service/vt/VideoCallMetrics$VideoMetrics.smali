.class public Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;
.super Ljava/lang/Object;
.source "VideoCallMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoMetrics"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallMetrics - Video"


# instance fields
.field private mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

.field private mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

.field private mHeight:I

.field private mIsPeerVideoLandscape:Z

.field private mIsPreviewVideoLandscape:Z

.field private mOffsetX:F

.field private mOffsetY:F

.field private mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

.field private mVideoAlign:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->update(II)V

    return-void
.end method

.method private getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    .locals 5

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-int v1, v3

    :goto_0
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {v0, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;-><init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    iput v2, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    iput p1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->aspectRatio:F

    return-object v0

    :cond_0
    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    goto :goto_0
.end method

.method private getHalfOfExtraHeight(I)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getHalfOfExtraWidth(I)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getPortraitExtraHeight()I
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getSmallOffset()I
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setVideoAlign()V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1
.end method

.method private update(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getOffsetX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getOffsetY()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    iput p2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->onPeerVideoOrientationChanged(Z)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->updateVideoTempleteSize()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->setVideoAlign()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->updateVideoCoordinate()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    goto :goto_0
.end method

.method private updateVideoCoordinate()V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v5}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/util/VideoTemplate;->getCenterAlignTemplete(II)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getIndicatorHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v5}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/util/VideoTemplate;->getCenterAlignTemplete(II)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method private updateVideoTempleteSize()V
    .locals 6

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v2

    const v4, 0x3faaaaab

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/high16 v4, 0x3f100000    # 0.5625f

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v2

    const v4, 0x3fe38e39

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v0

    :cond_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v3}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v0}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v0}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v3}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video video align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoAlign;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video big_portrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video big_landscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video small="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Video is landscape ? preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method public getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_1
    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1
.end method

.method public getOffsetX()I
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    # invokes: Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->access$100(Lcom/android/incallui/service/vt/VideoCallMetrics;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-boolean v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOffsetY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQuarterSize(I)I
    .locals 1

    div-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    # invokes: Lcom/android/incallui/service/vt/VideoCallMetrics;->getResizeWidth(I)I
    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->access$200(Lcom/android/incallui/service/vt/VideoCallMetrics;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    # invokes: Lcom/android/incallui/service/vt/VideoCallMetrics;->getResizeHeight(I)I
    invoke-static {v2, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->access$300(Lcom/android/incallui/service/vt/VideoCallMetrics;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/util/VideoTemplate;->resize(II)V

    return-object v0
.end method

.method public getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_divider:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->video_banner_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->camera_effect_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    :cond_0
    return-object v0
.end method

.method public getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_divider:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->video_banner_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_divider:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallOutgoingTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->outgoing_info_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    return-object v0
.end method

.method public getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    goto :goto_0
.end method

.method public onPeerVideoOrientationChanged(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
