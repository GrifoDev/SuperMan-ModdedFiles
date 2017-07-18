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

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    iput v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    new-instance v0, Lcom/android/incallui/richscreen/MovieImageView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/richscreen/MovieImageView$1;-><init>(Lcom/android/incallui/richscreen/MovieImageView;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->initGifAndImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/richscreen/MovieImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    iput-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    iput v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    new-instance v0, Lcom/android/incallui/richscreen/MovieImageView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/richscreen/MovieImageView$1;-><init>(Lcom/android/incallui/richscreen/MovieImageView;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->initGifAndImageView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/richscreen/MovieImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/richscreen/MovieImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    return v0
.end method

.method private configureDrawMatrix()V
    .locals 13

    const/4 v11, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const-string v9, "configureDrawMatrix"

    invoke-static {v9, v11}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    sget-boolean v9, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v9}, Landroid/graphics/Movie;->width()I

    move-result v3

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v9}, Landroid/graphics/Movie;->height()I

    move-result v2

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

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int v8, v9, v10

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int v7, v9, v10

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

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

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

    :cond_2
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float v0, v9, v12

    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float v1, v9, v12

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v10, v0, v12

    float-to-int v10, v10

    int-to-float v10, v10

    add-float v11, v1, v12

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

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

    :cond_5
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-gt v3, v8, :cond_6

    if-gt v2, v7, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v0, v9

    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v1, v9

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    if-nez v2, :cond_8

    :cond_7
    :goto_3
    goto :goto_2

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

    :cond_9
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_a

    move v5, v4

    :goto_4
    if-nez v2, :cond_b

    move v6, v4

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

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_0

    :cond_a
    int-to-float v9, v8

    int-to-float v10, v3

    div-float v5, v9, v10

    goto :goto_4

    :cond_b
    int-to-float v9, v7

    int-to-float v10, v2

    div-float v6, v9, v10

    goto :goto_5

    :cond_c
    sget-object v9, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperDrawMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_e

    if-nez v2, :cond_f

    :cond_e
    :goto_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_10

    :goto_7
    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    float-to-int v10, v0

    int-to-float v10, v10

    float-to-int v11, v1

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

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

    :cond_10
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_11

    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float v0, v9, v12

    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float v1, v9, v12

    goto :goto_7

    :cond_11
    int-to-float v9, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    sub-float v0, v9, v10

    int-to-float v9, v7

    int-to-float v10, v2

    mul-float/2addr v10, v4

    sub-float v1, v9, v10

    goto :goto_7
.end method

.method private initGifAndImageView()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/richscreen/MovieImageView;->isGifFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initGifAndImageView"

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

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

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAGifData([B)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-lt v3, v4, :cond_0

    new-array v1, v4, [B

    invoke-static {p0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v3, "GIF89a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

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

    return v2
.end method

.method public static isAGifStream(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v7, 0x6

    const/4 v3, 0x0

    new-array v1, v7, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    if-ne v4, v7, :cond_0

    const-string v5, "GIF89a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

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

    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

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

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    sput-boolean v1, Lcom/android/incallui/richscreen/MovieImageView;->mIsFeatureSetted:Z

    :cond_0
    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MovieImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "MovieImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 5

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

    move v0, p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private startOrStopMovie(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/richscreen/MovieImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/richscreen/MovieImageView;->setWillNotCacheDrawing(Z)V

    iput-boolean v4, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iput-boolean v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDefLayerType:I

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/richscreen/MovieImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private syncParentParameter()V
    .locals 2

    const-string v0, "syncParentParameter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperDrawMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    sget-boolean v12, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v12, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getCropToPadding()Z

    move-result v6

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

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollY()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getBottom()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getTop()I

    move-result v11

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

    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

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

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    invoke-virtual {v12, v13}, Landroid/graphics/Movie;->setTime(I)Z

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 24

    const-string v19, "onMeasure"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    sget-boolean v19, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    const/4 v7, 0x0

    move/from16 v16, v7

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

    if-nez v15, :cond_3

    if-eqz v14, :cond_d

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxHeight()I

    move-result v10

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

    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-eqz v19, :cond_7

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

    sub-float v19, v4, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v19, v20, v22

    if-lez v19, :cond_7

    const/4 v6, 0x0

    if-eqz v15, :cond_5

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

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v11, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v17

    :cond_4
    move/from16 v0, v17

    if-gt v13, v0, :cond_5

    move/from16 v17, v13

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_7

    if-eqz v14, :cond_7

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

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v10, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v8

    :cond_6
    if-gt v12, v8, :cond_7

    move v8, v12

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

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/incallui/richscreen/MovieImageView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Movie;->width()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Movie;->height()I

    move-result v7

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

    if-gtz v16, :cond_9

    const/16 v16, 0x1

    :cond_9
    if-gtz v7, :cond_a

    const/4 v7, 0x1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getAdjustViewBounds()Z

    move-result v19

    if-eqz v19, :cond_2

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/4 v15, 0x1

    :goto_3
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v9, v0, :cond_c

    const/4 v14, 0x1

    :goto_4
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v5, v19, v20

    goto/16 :goto_1

    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v16, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v7, v7, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumWidth()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v17

    const/16 v19, 0x0

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v8

    goto/16 :goto_2
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

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

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setImageMovie(Landroid/graphics/Movie;)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1

    const-string v0, "YYYYYYY setImageResource"

    invoke-static {v0}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/MovieImageView;->startOrStopMovie(Z)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setMovieIsPause(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iput-boolean p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsMoviePause:Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0
.end method

.method public setMovieIsShowFirstFrameOnly(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iput-boolean p1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->invalidate()V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->configureDrawMatrix()V

    return-void
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    goto :goto_0
.end method
