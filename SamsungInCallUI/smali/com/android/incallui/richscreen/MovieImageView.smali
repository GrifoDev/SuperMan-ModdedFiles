.class public Lcom/android/incallui/richscreen/MovieImageView;
.super Landroid/widget/ImageView;


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
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const-string v2, "configureDrawMatrix"

    invoke-static {v2, v9}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHaveFrame:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    iget-object v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movieWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", movieHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", vHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v1, v4, v2

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    sub-int v2, v5, v3

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_0

    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_5

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    :goto_1
    int-to-float v1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    int-to-float v2, v5

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    iget-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_4
    int-to-float v0, v5

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v4

    int-to-float v6, v2

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_5
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_8

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-gt v2, v4, :cond_7

    if-gt v3, v5, :cond_7

    :cond_6
    :goto_2
    int-to-float v1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    int-to-float v0, v4

    int-to-float v1, v2

    div-float/2addr v0, v1

    int-to-float v1, v5

    int-to-float v6, v3

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_8
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_b

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_9

    move v1, v0

    :goto_3
    if-nez v3, :cond_a

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScaleType.FIT_XY, scaleX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scaleY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_0

    :cond_9
    int-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_3

    :cond_a
    int-to-float v0, v5

    int-to-float v2, v3

    div-float/2addr v0, v2

    goto :goto_4

    :cond_b
    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_c

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperDrawMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_d

    if-nez v3, :cond_e

    :cond_d
    :goto_5
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_f

    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    float-to-int v2, v2

    int-to-float v2, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_e
    int-to-float v0, v5

    int-to-float v6, v3

    div-float/2addr v0, v6

    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_5

    :cond_f
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v6, :cond_10

    int-to-float v1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float v2, v1, v8

    int-to-float v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    mul-float/2addr v1, v8

    add-float/2addr v1, v8

    goto :goto_6

    :cond_10
    int-to-float v1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float v2, v1, v2

    int-to-float v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    goto :goto_6
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
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lt v1, v2, :cond_0

    new-array v1, v2, [B

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GIF89a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAGifData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isAGifStream(Ljava/io/InputStream;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    if-ne v2, v4, :cond_0

    const-string v1, "GIF89a"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAGifStream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    const-string v2, "MovieImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAGifStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveAdjustedSize, desiredSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",measureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    move p1, v0

    goto :goto_0

    nop

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
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v6}, Landroid/graphics/Movie;->setTime(I)Z

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getCropToPadding()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "superCropToPadding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/MovieImageView;->getTop()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    add-int/2addr v8, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v4

    iget v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int/2addr v1, v3

    add-int/2addr v2, v5

    sub-int/2addr v2, v6

    iget v3, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v7, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    iget v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, p1, v10, v10}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mIsShowFirstFrameOnly:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iget-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v9}, Landroid/graphics/Movie;->setTime(I)Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v6}, Landroid/graphics/Movie;->setTime(I)Z

    iput v6, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iput-wide v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    :cond_7
    iget-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieDuration:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    iget-object v0, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/android/incallui/richscreen/MovieImageView;->mMovieCurrentTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 17

    const-string v2, "onMeasure"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/incallui/richscreen/MovieImageView;->FEATURE_IS_GIF_SUPPORTED:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v2, :cond_1

    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->syncParentParameter()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move v6, v2

    move/from16 v16, v5

    move v5, v2

    move v2, v4

    move/from16 v4, v16

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure, resizeWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resizeHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    if-nez v2, :cond_2

    if-eqz v3, :cond_a

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getMaxHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v9, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v10, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v5

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    sub-int v7, v6, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v12, v7

    const-wide v14, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v7, v12, v14

    if-lez v7, :cond_d

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    add-int/2addr v8, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    add-int/2addr v8, v11

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v9, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v6

    :cond_3
    if-gt v8, v6, :cond_4

    const/4 v6, 0x1

    move v7, v6

    move v6, v8

    :cond_4
    if-nez v7, :cond_d

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    sub-int v3, v6, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    add-int/2addr v3, v4

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mAdjustViewBoundsCompat:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v10, v1}, Lcom/android/incallui/richscreen/MovieImageView;->resolveAdjustedSize(III)I

    move-result v5

    move v2, v5

    :goto_2
    if-gt v3, v2, :cond_b

    move v2, v3

    move v3, v6

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure, widthSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", heightSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/richscreen/MovieImageView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure, w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/incallui/richscreen/MovieImageView;->log(Ljava/lang/String;Z)V

    if-gtz v6, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-gtz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getAdjustViewBounds()Z

    move-result v9

    if-eqz v9, :cond_e

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v7, v3, :cond_8

    const/4 v4, 0x1

    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v8, v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    int-to-float v5, v6

    int-to-float v7, v2

    div-float/2addr v5, v7

    move/from16 v16, v4

    move v4, v5

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/richscreen/MovieImageView;->mSuperPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/richscreen/MovieImageView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v3

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v4, v0, v2}, Lcom/android/incallui/richscreen/MovieImageView;->resolveSizeAndState(III)I

    move-result v2

    goto/16 :goto_3

    :cond_b
    move v3, v6

    goto/16 :goto_3

    :cond_c
    move v2, v5

    goto/16 :goto_2

    :cond_d
    move v2, v5

    move v3, v6

    goto/16 :goto_3

    :cond_e
    move/from16 v16, v4

    move v4, v5

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_1
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
