.class public Lcom/samsung/android/media/virtualtour/CVector3;
.super Ljava/lang/Object;
.source "CVector3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/virtualtour/CPoint3D;Lcom/samsung/android/media/virtualtour/CPoint3D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    iget v1, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v0, p2, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    iget v1, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v0, p2, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    iget v1, p1, Lcom/samsung/android/media/virtualtour/CPoint3D;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/virtualtour/CVector3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    return-void
.end method


# virtual methods
.method public crossProd(Lcom/samsung/android/media/virtualtour/CVector3;)Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 6

    new-instance v0, Lcom/samsung/android/media/virtualtour/CVector3;

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v2, p1, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iget v3, p1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iget v3, p1, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v4, p1, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v4, p1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v5, p1, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    return-object v0
.end method

.method public getNorm()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalize()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/virtualtour/CVector3;->getNorm()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    return v0
.end method

.method public set(Lcom/samsung/android/media/virtualtour/CVector3;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
