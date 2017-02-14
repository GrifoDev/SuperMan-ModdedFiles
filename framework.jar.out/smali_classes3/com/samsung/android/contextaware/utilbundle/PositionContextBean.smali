.class Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
.super Ljava/lang/Object;
.source "PositionContextBean.java"


# static fields
.field static final FUSED_TYPE:I = 0x3

.field static final GPS_TYPE:I = 0x1

.field static final NONE_TYPE:I = 0x0

.field static final SLOCATION_TYPE:I = 0x4

.field static final WPS_TYPE:I = 0x2


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    return-void
.end method

.method constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    return-void
.end method

.method static final calculationDistance(DDDD)D
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p0, v4

    if-ltz v2, :cond_0

    cmpl-double v2, p2, v4

    if-ltz v2, :cond_0

    sub-double v2, p4, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v4, p6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput v1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    iput v1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return-void
.end method

.method final getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    return v0
.end method

.method final getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    return-wide v0
.end method

.method final getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    return-wide v0
.end method

.method final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    return-wide v0
.end method

.method final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    return-wide v0
.end method

.method final getSatelliteCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return v0
.end method

.method final getSpeed()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    return v0
.end method

.method final getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    return v0
.end method

.method final getUtcTime()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method final setAccuracy(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    return-void
.end method

.method final setAltitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    return-void
.end method

.method final setDistance(D)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    return-void
.end method

.method final setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    return-void
.end method

.method final setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    return-void
.end method

.method final setPosition(I[IDDDDFFI)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    iput-wide p3, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    iput-wide p5, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    iput-wide p7, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    iput-wide p9, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    iput p11, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    iput p12, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    iput p13, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return-void
.end method

.method final setSatelliteCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return-void
.end method

.method final setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    return-void
.end method

.method final setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    return-void
.end method

.method final setUtcTime([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    return-void
.end method
