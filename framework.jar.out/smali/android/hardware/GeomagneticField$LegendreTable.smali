.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/hardware/GeomagneticField$LegendreTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    aput-object v6, v5, v8

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    aput-object v6, v5, v8

    const/4 v3, 0x1

    :goto_0
    if-gt v3, p1, :cond_6

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [F

    aput-object v6, v5, v3

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [F

    aput-object v6, v5, v3

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v3, :cond_5

    if-ne v3, v2, :cond_0

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    mul-float/2addr v6, v4

    aput v6, v5, v2

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-eq v3, v9, :cond_1

    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    aget v6, v6, v2

    mul-float/2addr v6, v0

    aput v6, v5, v2

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v6, v4

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v2

    goto :goto_2

    :cond_2
    sget-boolean v5, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    if-le v3, v9, :cond_3

    add-int/lit8 v5, v3, -0x1

    if-lt v2, v5, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_4
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    mul-int/2addr v5, v6

    mul-int v6, v2, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, -0x3

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float v1, v5, v6

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    aget v6, v6, v2

    mul-float/2addr v6, v0

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v3, -0x2

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v2

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v6, v4

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v3, -0x2

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
