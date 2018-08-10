.class Lcom/android/systemui/recents/views/Range;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# instance fields
.field baseProgressX:F

.field max:F

.field min:F

.field origin:F

.field relativeMax:F

.field relativeMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    return-void
.end method


# virtual methods
.method public getAbsoluteX(F)F
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->baseProgressX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    return v0

    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    sub-float v0, p1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    return v0

    :cond_1
    sub-float v0, p1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedX(F)F
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->baseProgressX:F

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public isInRange(F)Z
    .locals 6

    const/4 v0, 0x0

    float-to-double v2, p1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    float-to-double v2, p1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->max:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offset(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->min:F

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->max:F

    return-void
.end method

.method public setRelative(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    iput p3, p0, Lcom/android/systemui/recents/views/Range;->baseProgressX:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "Range(relative[%f, %f], origin=%f, min,max=[%f, %f]\n"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->min:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
