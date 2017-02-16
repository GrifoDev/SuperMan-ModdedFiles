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
    .param p1, "this$0"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    const/4 v1, 0x0

    .line 342
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    .line 335
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    .line 336
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    .line 337
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    .line 339
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    .line 340
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->update(II)V

    return-void
.end method

.method private getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    .line 480
    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    .line 481
    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    .line 482
    .local v2, "width":I
    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-int v1, v3

    .line 487
    .local v1, "height":I
    :goto_0
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {v0, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;-><init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    .line 488
    .local v0, "dimension":Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    iput v2, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    .line 489
    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    .line 490
    iput p1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->aspectRatio:F

    .line 491
    return-object v0

    .line 484
    .end local v0    # "dimension":Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 485
    .restart local v2    # "width":I
    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private getHalfOfExtraHeight(I)F
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 412
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getHalfOfExtraWidth(I)F
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 408
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getPortraitExtraHeight()I
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getSmallOffset()I
    .locals 2

    .prologue
    .line 420
    const/high16 v0, 0x41400000    # 12.0f

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setVideoAlign()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "align":I
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

    .line 374
    .local v1, "centerAlign":Z
    :goto_0
    if-nez v1, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    if-ne v3, v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 377
    const/4 v0, 0x2

    .line 390
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    .line 391
    return-void

    .line 373
    .end local v1    # "centerAlign":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 380
    .restart local v1    # "centerAlign":Z
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 382
    const/4 v0, 0x1

    .line 384
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getPortraitExtraHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 385
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private update(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getOffsetX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    .line 347
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getOffsetY()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    .line 348
    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mWidth:I

    .line 349
    iput p2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mHeight:I

    .line 350
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    .line 351
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->onPeerVideoOrientationChanged(Z)Z

    .line 358
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->updateVideoTempleteSize()V

    .line 359
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->setVideoAlign()V

    .line 360
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->updateVideoCoordinate()V

    .line 361
    return-void

    .line 354
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    goto :goto_0
.end method

.method private updateVideoCoordinate()V
    .locals 6

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "isLand":Z
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 454
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 455
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 456
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getHalfOfExtraHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 458
    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 460
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

    .line 466
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 467
    .local v1, "offset":I
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDefaultCallCardHeight()I

    move-result v1

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetX:F

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 471
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 472
    return-void

    .line 461
    .end local v1    # "offset":I
    :cond_2
    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mVideoAlign:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mOffsetY:F

    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getIndicatorHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 463
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

    .prologue
    .line 424
    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v2

    .line 425
    .local v2, "portrait":Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    const v4, 0x3faaaaab

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v1

    .line 426
    .local v1, "landscape":Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 427
    const/high16 v4, 0x3f100000    # 0.5625f

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v2

    .line 428
    const v4, 0x3fe38e39

    invoke-direct {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getFitSizeDimension(F)Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;

    move-result-object v1

    .line 430
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 431
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 432
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 433
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    iget v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 435
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v3

    .line 436
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v0

    .line 437
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v3

    .line 439
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getQuarterSize(I)I

    move-result v0

    .line 441
    :cond_1
    if-ge v3, v0, :cond_2

    .line 442
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v3}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 443
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v0}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v0}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 446
    iget-object v4, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v4, v3}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 586
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

    .line 587
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

    .line 588
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

    .line 589
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

    .line 590
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

    .line 591
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

    .line 592
    return-void
.end method

.method public getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 496
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 501
    :goto_0
    return-object v0

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method public getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 3
    .param p1, "isPreview"    # Z

    .prologue
    .line 505
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 507
    .local v1, "template":Lcom/android/incallui/util/VideoTemplate;
    if-eqz p1, :cond_0

    .line 508
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPreviewVideoLandscape:Z

    .line 512
    .local v0, "isLand":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 513
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigLandscape:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 517
    :goto_1
    return-object v1

    .line 510
    .end local v0    # "isLand":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    .restart local v0    # "isLand":Z
    goto :goto_0

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mBigPortrait:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1
.end method

.method public getOffsetX()I
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    # invokes: Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->access$100(Lcom/android/incallui/service/vt/VideoCallMetrics;)Landroid/content/Context;

    move-result-object v0

    .line 396
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-boolean v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    if-eqz v1, :cond_0

    .line 397
    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    .line 400
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public getQuarterSize(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 475
    div-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    .prologue
    .line 521
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 522
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
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

    .line 523
    return-object v0
.end method

.method public getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4
    .param p1, "isPreview"    # Z

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 558
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
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

    .line 559
    .local v1, "y":F
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 560
    return-object v0
.end method

.method public getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4
    .param p1, "isPreview"    # Z

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 579
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->camera_effect_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 580
    .local v1, "y":F
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 581
    return-object v0
.end method

.method public getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 541
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 542
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 544
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 546
    :cond_0
    return-object v0
.end method

.method public getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4
    .param p1, "isPreview"    # Z

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 565
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
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

    .line 566
    .local v1, "y":F
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 567
    return-object v0
.end method

.method public getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 4
    .param p1, "isPreview"    # Z

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 551
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
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

    .line 552
    .local v1, "y":F
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 553
    return-object v0
.end method

.method public getSmallOutgoingTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 572
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->outgoing_info_area:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 573
    .local v1, "y":F
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 574
    return-object v0
.end method

.method public getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 2
    .param p1, "isPreview"    # Z

    .prologue
    .line 527
    if-eqz p1, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 530
    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 531
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 532
    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 534
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mSmallDefault:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    goto :goto_0
.end method

.method public onPeerVideoOrientationChanged(Z)Z
    .locals 1
    .param p1, "isLandsacpe"    # Z

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    if-eq p1, v0, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->mIsPeerVideoLandscape:Z

    .line 366
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
