.class public Lcom/samsung/android/graphics/SemBlurFilter;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemBlurFilter.java"


# static fields
.field public static final TYPE_COSINE:I = 0x1

.field public static final TYPE_GAUSSIAN:I = 0x0

.field public static final TYPE_SGI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemBlurFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBlurFilter;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlurFilter;->clone()Lcom/samsung/android/graphics/SemBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOptimization()F
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getValue(I)F

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getValue(I)F

    move-result v0

    return v0
.end method

.method public setOptimization(I)V
    .locals 2

    int-to-float v0, p1

    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    return-void
.end method
