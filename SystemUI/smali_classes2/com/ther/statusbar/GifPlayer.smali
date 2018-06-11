.class public Lcom/ther/statusbar/GifPlayer;
.super Landroid/view/View;
.source "GifPlayer.java"


# static fields
.field private static final DEFAULT_MOVIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieResourceId:I

.field private mMovieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v5, 0x0

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/ther/statusbar/GifPlayer;->mMovieStart:J

    const/4 v5, 0x0

    iput v5, p0, Lcom/ther/statusbar/GifPlayer;->mCurrentAnimationTime:I

    invoke-virtual {p0}, Lcom/ther/statusbar/GifPlayer;->UpdateImage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/ther/statusbar/GifPlayer;->setImageResource(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Paint;

    invoke-virtual {p0, v5, v6}, Lcom/ther/statusbar/GifPlayer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawGif(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    move-object v4, v0

    iget v4, v4, Lcom/ther/statusbar/GifPlayer;->mCurrentAnimationTime:I

    invoke-virtual {v3, v4}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    move-object v4, v1

    const/4 v5, 0x0

    int-to-float v5, v5

    const/4 v6, 0x0

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private updateAnimtionTime()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v2, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/ther/statusbar/GifPlayer;->mMovieStart:J

    const/4 v8, 0x0

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lcom/ther/statusbar/GifPlayer;->mMovieStart:J

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->duration()I

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    const/16 v6, 0x3e8

    move v4, v6

    :cond_1
    move-object v6, v0

    move-wide v7, v2

    move-object v9, v0

    iget-wide v9, v9, Lcom/ther/statusbar/GifPlayer;->mMovieStart:J

    sub-long/2addr v7, v9

    move v9, v4

    int-to-long v9, v9

    rem-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Lcom/ther/statusbar/GifPlayer;->mCurrentAnimationTime:I

    return-void
.end method


# virtual methods
.method public UpdateImage()I
    .locals 8

    invoke-virtual {p0}, Lcom/ther/statusbar/GifPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gif_image_style"

    const v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x1

    if-le v0, v1, :cond_0

    const v1, 0x2

    if-eq v0, v1, :cond_1

    const v1, 0x3

    if-eq v0, v1, :cond_2

    const v1, 0x4

    if-eq v0, v1, :cond_3

    const v1, 0x5

    if-eq v0, v1, :cond_4

    const v1, 0x6

    if-eq v0, v1, :cond_5

    const v1, 0x7

    if-eq v0, v1, :cond_6

    const v1, 0x8

    if-eq v0, v1, :cond_7

    const v1, 0x9

    if-eq v0, v1, :cond_8

    const v1, 0xa

    if-eq v0, v1, :cond_9

    const v1, 0xb

    if-eq v0, v1, :cond_a

    const v1, 0xc

    if-le v0, v1, :cond_b

    const v1, 0xd

    if-eq v0, v1, :cond_c

    const v1, 0xe

    if-eq v0, v1, :cond_d

    const v1, 0xf

    if-eq v0, v1, :cond_e

    const v1, 0x10

    if-eq v0, v1, :cond_f

    const v1, 0x11

    if-eq v0, v1, :cond_10

    const v1, 0x12

    if-eq v0, v1, :cond_11

    const v1, 0x13

    if-eq v0, v1, :cond_12

    const v1, 0x14

    if-eq v0, v1, :cond_13

    const v1, 0x15

    if-eq v0, v1, :cond_14

    const v1, 0x16

    if-eq v0, v1, :cond_15

    const v1, 0x17

    if-le v0, v1, :cond_16

    const v1, 0x18

    if-eq v0, v1, :cond_17

    const v1, 0x19

    if-eq v0, v1, :cond_18

    const v1, 0x1a

    if-eq v0, v1, :cond_19

    const v1, 0x1b

    if-eq v0, v1, :cond_1a

    const v1, 0x1c

    if-eq v0, v1, :cond_1b

    const v1, 0x1d

    if-eq v0, v1, :cond_1c

    const v1, 0x1e

    if-eq v0, v1, :cond_1d

    const v1, 0x1f

    if-eq v0, v1, :cond_1e

    const v1, 0x20

    if-eq v0, v1, :cond_1f

    const v1, 0x21

    if-eq v0, v1, :cond_20

    const v1, 0x22

    if-eq v0, v1, :cond_21

    const v1, 0x23

    if-eq v0, v1, :cond_22

    const v1, 0x24

    if-eq v0, v1, :cond_23

    :cond_0
    const-string v4, "abstract2"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :goto_0
    return v6

    :cond_1
    const-string v4, "ACube"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_2
    const-string v4, "AlienTwerking"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_3
    const-string v4, "BadKoolAid"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_4
    const-string v4, "BadSkeleton"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_5
    const-string v4, "BattleStance"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_6
    const-string v4, "BicLighter"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_7
    const-string v4, "Bird"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_8
    const-string v4, "BoobShoots"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_9
    const-string v4, "BrianPeanutButterJelyTime"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_a
    const-string v4, "Butterfly"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_b
    const-string v4, "ButtShake"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_c
    const-string v4, "Cats"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_d
    const-string v4, "ChesterCheto"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_e
    const-string v4, "CoolAPe"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_f
    const-string v4, "DancingElsa"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_10
    const-string v4, "DoubleMeaning"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_11
    const-string v4, "Eyeball"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_12
    const-string v4, "MM"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_13
    const-string v4, "PifWithBacon"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_14
    const-string v4, "PleaseNo"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_15
    const-string v4, "RotatingSkeletonOnChair"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_16
    const-string v4, "SkeletonCuttingFood"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_17
    const-string v4, "SkeletonNoIceCream"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_18
    const-string v4, "SkeletonWave"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_19
    const-string v4, "SkeltonEatingChetos"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1a
    const-string v4, "Stitch"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1b
    const-string v4, "StitchBraHead"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1c
    const-string v4, "StitchDrop"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1d
    const-string v4, "WaitingSkeleton"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1e
    const-string v4, "WalkingDeadBirth"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_1f
    const-string v4, "WalkingWolf"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_20
    const-string v4, "WavingFroven"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_21
    const-string v4, "BMLogoYellow"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_22
    const-string v4, "BMLogoBlue"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_23
    const-string v4, "BMLogoBlack"

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5}, Lcom/ther/statusbar/GifPlayer;->find(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/ther/statusbar/GifPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ther/statusbar/GifPlayer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, p2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lcom/ther/statusbar/GifPlayer;->updateAnimtionTime()V

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/ther/statusbar/GifPlayer;->drawGif(Landroid/graphics/Canvas;)V

    move-object v3, v0

    invoke-virtual {v3}, Lcom/ther/statusbar/GifPlayer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/ther/statusbar/GifPlayer;->drawGif(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->width()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->height()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/ther/statusbar/GifPlayer;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ther/statusbar/GifPlayer;->getSuggestedMinimumWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ther/statusbar/GifPlayer;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/ther/statusbar/GifPlayer;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/ther/statusbar/GifPlayer;->mMovieResourceId:I

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ther/statusbar/GifPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/ther/statusbar/GifPlayer;->mMovieResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    iput-object v4, v3, Lcom/ther/statusbar/GifPlayer;->mMovie:Landroid/graphics/Movie;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/ther/statusbar/GifPlayer;->requestLayout()V

    return-void
.end method
