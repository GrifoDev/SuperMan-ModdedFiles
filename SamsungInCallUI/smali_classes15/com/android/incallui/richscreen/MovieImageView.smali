.class public Lcom/android/incallui/richscreen/MovieImageView;
.super Landroid/widget/ImageView;
.source "MovieImageView.java"


# static fields
.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field private static final DBG_TAG:Ljava/lang/String; = "MovieImageView"

.field private static final DELAY_TIME_VIEW_INVALIDATE:I = 0x26

.field private static final EVENT_VIEW_INVALIDATE:I = 0x1

.field private static FEATURE_IS_GIF_SUPPORTED:Z

.field private static mIsFeatureSetted:Z


# instance fields
.field private mAdjustViewBoundsCompat:Z

.field private mDefLayerType:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveFrame:Z

.field private mIsMoviePause:Z

.field private mIsShowFirstFrameOnly:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieCurrentTime:I

.field private mMovieDuration:J

.field private mMovieStartTime:J

.field private mSuperDrawMatrix:Landroid/graphics/Matrix;

.field private mSuperPaddingBottom:I

.field private mSuperPaddingLeft:I

.field private mSuperPaddingRight:I

.field private mSuperPaddingTop:I

.field private mSuperScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    .line 64
    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    .line 65
    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    .line 66
    iput v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    .line 71
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    .line 77
    new-instance v0, Lcom/android/incallui/richscreen/MovieImageView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/richscreen/MovieImageView$1;-><init>(Lcom/android/incallui/richscreen/MovieImageView;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->initGifAndImageView()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/richscreen/MovieImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    .line 64
    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    .line 65
    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    .line 66
    iput v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    .line 71
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    .line 77
    new-instance v0, Lcom/android/incallui/richscreen/MovieImageView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/richscreen/MovieImageView$1;-><init>(Lcom/android/incallui/richscreen/MovieImageView;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->initGifAndImageView()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/richscreen/MovieImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/richscreen/MovieImageView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/richscreen/MovieImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/richscreen/MovieImageView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    return v0
.end method

.method private configureDrawMatrix()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    .line 309
    const-string v9, "configureDrawMatrix"

    invoke-static {v9, v11}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 310
    sget-boolean v9, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    if-nez v9, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    .line 317
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v9}, Landroid/graphics/Movie;->width()I

    move-result v3

    .line 318
    .local v3, "movieWidth":I
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v9}, Landroid/graphics/Movie;->height()I

    move-result v2

    .line 319
    .local v2, "movieHeight":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movieWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", movieHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int v8, v9, v10

    .line 323
    .local v8, "vWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int v7, v9, v10

    .line 325
    .local v7, "vHeight":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 327
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_2

    .line 328
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 329
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v10, v8, v3

    int-to-float v10, v10

    mul-float/2addr v10, v12

    add-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v10, v10

    sub-int v11, v7, v2

    int-to-float v11, v11

    mul-float/2addr v11, v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_0

    .line 332
    :cond_2
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_5

    .line 334
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 335
    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    .line 336
    .local v4, "scale":F
    :cond_3
    :goto_1
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float v0, v9, v12

    .line 337
    .local v0, "dx":F
    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float v1, v9, v12

    .line 338
    .local v1, "dy":F
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 339
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v10, v0, v12

    float-to-int v10, v10

    int-to-float v10, v10

    add-float v11, v1, v12

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 335
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "scale":F
    :cond_4
    int-to-float v9, v7

    int-to-float v10, v2

    div-float/2addr v9, v10

    int-to-float v10, v8

    int-to-float v11, v3

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    .line 341
    :cond_5
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_9

    .line 343
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 345
    if-gt v3, v8, :cond_6

    if-gt v2, v7, :cond_6

    .line 346
    const/high16 v4, 0x3f800000    # 1.0f

    .line 350
    .restart local v4    # "scale":F
    :goto_2
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v0, v9

    .line 351
    .restart local v0    # "dx":F
    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v1, v9

    .line 352
    .restart local v1    # "dy":F
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 353
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 348
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "scale":F
    :cond_6
    if-eqz v3, :cond_7

    if-nez v2, :cond_8

    .restart local v4    # "scale":F
    :cond_7
    :goto_3
    goto :goto_2

    .end local v4    # "scale":F
    :cond_8
    int-to-float v9, v8

    int-to-float v10, v3

    div-float/2addr v9, v10

    int-to-float v10, v7

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_3

    .line 355
    :cond_9
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_c

    .line 357
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 358
    if-nez v3, :cond_a

    move v5, v4

    .line 359
    .local v5, "scaleX":F
    :goto_4
    if-nez v2, :cond_b

    move v6, v4

    .line 360
    .local v6, "scaleY":F
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScaleType.FIT_XY, scaleX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scaleY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 361
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_0

    .line 358
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    :cond_a
    int-to-float v9, v8

    int-to-float v10, v3

    div-float v5, v9, v10

    goto :goto_4

    .line 359
    .restart local v5    # "scaleX":F
    :cond_b
    int-to-float v9, v7

    int-to-float v10, v2

    div-float v6, v9, v10

    goto :goto_5

    .line 364
    .end local v5    # "scaleX":F
    :cond_c
    sget-object v9, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_d

    .line 366
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperDrawMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 369
    :cond_d
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 370
    if-eqz v3, :cond_e

    if-nez v2, :cond_f

    .line 371
    .restart local v4    # "scale":F
    :cond_e
    :goto_6
    const/4 v0, 0x0

    .line 372
    .restart local v0    # "dx":F
    const/4 v1, 0x0

    .line 373
    .restart local v1    # "dy":F
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_10

    .line 383
    :goto_7
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 384
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    float-to-int v10, v0

    int-to-float v10, v10

    float-to-int v11, v1

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 370
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "scale":F
    :cond_f
    int-to-float v9, v7

    int-to-float v10, v2

    div-float/2addr v9, v10

    int-to-float v10, v8

    int-to-float v11, v3

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_6

    .line 376
    .restart local v0    # "dx":F
    .restart local v1    # "dy":F
    .restart local v4    # "scale":F
    :cond_10
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_11

    .line 377
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float v0, v9, v12

    .line 378
    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float v1, v9, v12

    goto :goto_7

    .line 380
    :cond_11
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float v0, v9, v10

    .line 381
    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float v1, v9, v10

    goto :goto_7
.end method

.method private initGifAndImageView()V
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Lcom/android/incallui/richscreen/MovieImageView;->isGifFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "initGifAndImageView"

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 302
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 303
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    .line 304
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    .line 306
    :cond_0
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAGifData([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "ifAGif":Z
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lt v3, v4, :cond_0

    .line 179
    new-array v1, v4, [B

    .line 180
    .local v1, "header":[B
    invoke-static {p0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 182
    .local v0, "fileHeader":Ljava/lang/String;
    const-string v3, "GIF89a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 186
    .end local v0    # "fileHeader":Ljava/lang/String;
    .end local v1    # "header":[B
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAGifData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 187
    return v2
.end method

.method public static isAGifStream(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x6

    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, "ifAGif":Z
    new-array v1, v7, [B

    .line 156
    .local v1, "head":[B
    const/4 v4, 0x0

    .line 159
    .local v4, "readLength":I
    const/4 v5, 0x0

    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 160
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 161
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 163
    .local v2, "headStr":Ljava/lang/String;
    if-ne v4, v7, :cond_0

    const-string v5, "GIF89a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    const/4 v3, 0x1

    .line 172
    .end local v2    # "headStr":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAGifStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 173
    return v3

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 169
    const-string v5, "MovieImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAGifStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isGifFeatureEnable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 223
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    if-nez v0, :cond_0

    .line 225
    sput-boolean v1, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    .line 226
    sput-boolean v1, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    .line 228
    :cond_0
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 615
    const-string v0, "MovieImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    const-string v0, "MovieImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 5
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveAdjustedSize, desiredSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",maxSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",measureSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 390
    move v0, p1

    .line 391
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 392
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 393
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 413
    :goto_0
    return v0

    .line 399
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 400
    goto :goto_0

    .line 405
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 406
    goto :goto_0

    .line 410
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 393
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private startOrStopMovie(Z)V
    .locals 5
    .param p1, "bStart"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " startOrStopMovie("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/richscreen/MovieImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/richscreen/MovieImageView;->setWillNotCacheDrawing(Z)V

    .line 114
    iput-boolean v4, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    .line 116
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    .line 117
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    goto :goto_0

    .line 119
    :cond_3
    iput-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    .line 120
    iput-boolean v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    .line 121
    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 122
    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/richscreen/MovieImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private syncParentParameter()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "syncParentParameter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    .line 237
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    .line 238
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperDrawMatrix:Landroid/graphics/Matrix;

    .line 239
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 548
    sget-boolean v12, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v12, :cond_1

    .line 549
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 602
    :goto_0
    return-void

    .line 554
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 555
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    .line 574
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 575
    .local v4, "saveCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getCropToPadding()Z

    move-result v6

    .line 578
    .local v6, "superCropToPadding":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "superCropToPadding = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 579
    if-eqz v6, :cond_3

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollX()I

    move-result v9

    .line 581
    .local v9, "superScrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollY()I

    move-result v10

    .line 582
    .local v10, "superScrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getRight()I

    move-result v8

    .line 583
    .local v8, "superRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLeft()I

    move-result v7

    .line 584
    .local v7, "superLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getBottom()I

    move-result v5

    .line 585
    .local v5, "superBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getTop()I

    move-result v11

    .line 586
    .local v11, "superTop":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    add-int/2addr v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    add-int/2addr v13, v10

    add-int v14, v9, v8

    sub-int/2addr v14, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int/2addr v14, v15

    add-int v15, v10, v5

    sub-int/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 590
    .end local v5    # "superBottom":I
    .end local v7    # "superLeft":I
    .end local v8    # "superRight":I
    .end local v9    # "superScrollX":I
    .end local v10    # "superScrollY":I
    .end local v11    # "superTop":I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 595
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 597
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x26

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 556
    .end local v4    # "saveCount":I
    .end local v6    # "superCropToPadding":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-eqz v12, :cond_6

    .line 557
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    if-eqz v12, :cond_2

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    .line 562
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    goto/16 :goto_1

    .line 565
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 566
    .local v2, "now":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 567
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    .line 569
    :cond_7
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    sub-long v12, v2, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    rem-long/2addr v12, v14

    long-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 419
    const-string v19, "onMeasure"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 421
    sget-boolean v19, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 422
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 543
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    .line 432
    const/4 v5, 0x0

    .line 435
    .local v5, "desiredAspect":F
    const/4 v15, 0x0

    .line 438
    .local v15, "resizeWidth":Z
    const/4 v14, 0x0

    .line 440
    .local v14, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 441
    .local v18, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 443
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 444
    const/4 v7, 0x0

    .local v7, "h":I
    move/from16 v16, v7

    .line 465
    .local v16, "w":I
    :cond_2
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMeasure, resizeWidth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", resizeHeight="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 466
    if-nez v15, :cond_3

    if-eqz v14, :cond_d

    .line 468
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxWidth()I

    move-result v11

    .line 469
    .local v11, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxHeight()I

    move-result v10

    .line 477
    .local v10, "maxHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v17

    .line 480
    .local v17, "widthSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v10, v2}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 482
    .local v8, "heightSize":I
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-eqz v19, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v20, v0

    sub-int v20, v8, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v4, v19, v20

    .line 487
    .local v4, "actualAspect":F
    sub-float v19, v4, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v19, v20, v22

    if-lez v19, :cond_7

    .line 489
    const/4 v6, 0x0

    .line 492
    .local v6, "done":Z
    if-eqz v15, :cond_5

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v8, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    add-int v13, v19, v20

    .line 498
    .local v13, "newWidth":I
    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v11, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v17

    .line 502
    :cond_4
    move/from16 v0, v17

    if-gt v13, v0, :cond_5

    .line 503
    move/from16 v17, v13

    .line 504
    const/4 v6, 0x1

    .line 509
    .end local v13    # "newWidth":I
    :cond_5
    if-nez v6, :cond_7

    if-eqz v14, :cond_7

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v20, v0

    add-int v12, v19, v20

    .line 515
    .local v12, "newHeight":I
    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v10, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 519
    :cond_6
    if-gt v12, v8, :cond_7

    .line 520
    move v8, v12

    .line 541
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "maxHeight":I
    .end local v11    # "maxWidth":I
    .end local v12    # "newHeight":I
    :cond_7
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMeasure, widthSize="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", heightSize="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/incallui/richscreen/MovieImageView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 446
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v16    # "w":I
    .end local v17    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Movie;->width()I

    move-result v16

    .line 447
    .restart local v16    # "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Movie;->height()I

    move-result v7

    .line 448
    .restart local v7    # "h":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMeasure, w = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", h = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    .line 449
    if-gtz v16, :cond_9

    .line 450
    const/16 v16, 0x1

    .line 451
    :cond_9
    if-gtz v7, :cond_a

    .line 452
    const/4 v7, 0x1

    .line 456
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getAdjustViewBounds()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 457
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/4 v15, 0x1

    .line 458
    :goto_3
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v9, v0, :cond_c

    const/4 v14, 0x1

    .line 459
    :goto_4
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v5, v19, v20

    goto/16 :goto_1

    .line 457
    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    .line 458
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 531
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v16, v16, v19

    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v7, v7, v19

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumWidth()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 537
    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v17

    .line 538
    .restart local v17    # "widthSize":I
    const/16 v19, 0x0

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto/16 :goto_2
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 294
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    .line 295
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    .line 296
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    .line 244
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    .line 250
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 p1, 0x0

    .line 278
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 280
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    .line 283
    :cond_3
    return-void
.end method

.method public setImageMovie(Landroid/graphics/Movie;)V
    .locals 2
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageMovie("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eq v0, p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    .line 138
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 255
    const-string v0, "YYYYYYY setImageResource"

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    .line 259
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    .line 265
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 266
    return-void
.end method

.method public setMovieIsPause(Z)V
    .locals 2
    .param p1, "isPause"    # Z

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageMovieIsPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 198
    iput-boolean p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    .line 199
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0
.end method

.method public setMovieIsShowFirstFrameOnly(Z)V
    .locals 2
    .param p1, "isShowFirstFrameOnly"    # Z

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-ne p1, v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMovieIsShowFirstFrameOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    .line 212
    iput-boolean p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    .line 213
    if-nez p1, :cond_2

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 288
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    .line 289
    return-void
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 1
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    .line 606
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    goto :goto_0
.end method
