.class public Lcom/samsung/android/srib/vecmath/Vector3f;
.super Lcom/samsung/android/srib/vecmath/Tuple3f;
.source "Vector3f.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/srib/vecmath/Tuple3f;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/srib/vecmath/Tuple3f;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public final cross(Lcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;)V
    .locals 5

    iget v2, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v3, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v4, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    iget v2, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v3, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v4, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    iget v2, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v3, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v4, p2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    return-void
.end method

.method public final length()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final normalize()V
    .locals 6

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v3, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v3, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    double-to-float v0, v2

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    return-void
.end method
