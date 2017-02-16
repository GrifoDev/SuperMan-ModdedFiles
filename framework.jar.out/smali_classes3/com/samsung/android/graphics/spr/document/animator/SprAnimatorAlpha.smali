.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorAlpha.java"


# instance fields
.field private from:F

.field private to:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 9
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 10
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 9
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 10
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    .line 16
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 24
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 25
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 26
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :goto_2
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 27
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :goto_3
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 23
    return-void

    .line 24
    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    goto :goto_0

    .line 25
    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    goto :goto_1

    .line 26
    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    goto :goto_2

    .line 27
    :cond_3
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    goto :goto_3
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 33
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public set(FF)V
    .locals 0
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 70
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    .line 68
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 43
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 44
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 45
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :goto_2
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 46
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :goto_3
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 48
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 40
    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    goto :goto_1

    .line 45
    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    goto :goto_2

    .line 46
    :cond_3
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    goto :goto_3
.end method

.method public updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1
    .param p1, "parameter"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    .prologue
    .line 59
    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    .line 65
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    goto :goto_0
.end method
