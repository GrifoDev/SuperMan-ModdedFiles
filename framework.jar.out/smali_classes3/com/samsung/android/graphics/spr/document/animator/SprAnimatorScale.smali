.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorScale.java"


# instance fields
.field private fromX:F

.field private fromY:F

.field private pivotX:F

.field private pivotY:F

.field private toX:F

.field private toY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v1, "x"

    new-array v2, v6, [F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "y"

    new-array v2, v6, [F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public set(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    iput p3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    iput p4, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    iput p5, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    iput p6, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->init()V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    const-string/jumbo v0, "y"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    goto :goto_0
.end method
