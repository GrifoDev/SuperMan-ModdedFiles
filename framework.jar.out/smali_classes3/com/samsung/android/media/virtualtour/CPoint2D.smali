.class public Lcom/samsung/android/media/virtualtour/CPoint2D;
.super Ljava/lang/Object;
.source "CPoint2D.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    return-void
.end method

.method public static add(Lcom/samsung/android/media/virtualtour/CPoint2D;Lcom/samsung/android/media/virtualtour/CPoint2D;)Lcom/samsung/android/media/virtualtour/CPoint2D;
    .locals 4

    new-instance v0, Lcom/samsung/android/media/virtualtour/CPoint2D;

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v2, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v3, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/CPoint2D;-><init>(FF)V

    return-object v0
.end method

.method public static scale(Lcom/samsung/android/media/virtualtour/CPoint2D;F)Lcom/samsung/android/media/virtualtour/CPoint2D;
    .locals 3

    new-instance v0, Lcom/samsung/android/media/virtualtour/CPoint2D;

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/CPoint2D;-><init>(FF)V

    return-object v0
.end method

.method public static subtract(Lcom/samsung/android/media/virtualtour/CPoint2D;Lcom/samsung/android/media/virtualtour/CPoint2D;)Lcom/samsung/android/media/virtualtour/CPoint2D;
    .locals 4

    new-instance v0, Lcom/samsung/android/media/virtualtour/CPoint2D;

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v2, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v3, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/CPoint2D;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public dotProduct(Lcom/samsung/android/media/virtualtour/CPoint2D;)F
    .locals 3

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v1, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v2, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getDistance(Lcom/samsung/android/media/virtualtour/CPoint2D;)F
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/media/virtualtour/CPoint2D;->subtract(Lcom/samsung/android/media/virtualtour/CPoint2D;Lcom/samsung/android/media/virtualtour/CPoint2D;)Lcom/samsung/android/media/virtualtour/CPoint2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/virtualtour/CPoint2D;->length()F

    move-result v0

    return v0
.end method

.method public length()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalize()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/virtualtour/CPoint2D;->normalize(F)F

    move-result v0

    return v0
.end method

.method public normalize(F)F
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/media/virtualtour/CPoint2D;->length()F

    move-result v1

    div-float v0, p1, v1

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    return v1
.end method
