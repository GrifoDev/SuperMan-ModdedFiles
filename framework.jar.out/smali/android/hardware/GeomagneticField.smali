.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BASE_TIME:J

.field private static final DELTA_G:[[F

.field private static final DELTA_H:[[F

.field private static final EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final G_COEFF:[[F

.field private static final H_COEFF:[[F

.field private static final SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private mGcLatitudeRad:F

.field private mGcLongitudeRad:F

.field private mGcRadiusKm:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/hardware/GeomagneticField;->-assertionsDisabled:Z

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    aput-object v3, v0, v7

    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_6

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_7

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_8

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_9

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_a

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xd

    new-array v3, v3, [F

    fill-array-data v3, :array_b

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sput-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    new-array v3, v6, [F

    fill-array-data v3, :array_d

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_e

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_f

    aput-object v3, v0, v7

    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_10

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_11

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_12

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_13

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_14

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_15

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_16

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xd

    new-array v3, v3, [F

    fill-array-data v3, :array_17

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sput-object v0, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_18

    aput-object v3, v0, v2

    new-array v3, v6, [F

    fill-array-data v3, :array_19

    aput-object v3, v0, v5

    new-array v3, v7, [F

    fill-array-data v3, :array_1a

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_1b

    aput-object v3, v0, v7

    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_1c

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_1d

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_1e

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_1f

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_20

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_21

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_22

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xd

    new-array v3, v3, [F

    fill-array-data v3, :array_23

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_24

    aput-object v1, v0, v2

    new-array v1, v6, [F

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_26

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_27

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_29

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_2b

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const/16 v1, 0xb

    new-array v1, v1, [F

    fill-array-data v1, :array_2d

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_2e

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const/16 v1, 0xd

    new-array v1, v1, [F

    fill-array-data v1, :array_2f

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7da

    invoke-direct {v0, v1, v2, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sget-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v0, v0

    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    move-result-object v0

    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :array_0
    .array-data 4
        -0x39198ecd
        -0x3b39b666    # -1586.3f
    .end array-data

    :array_1
    .array-data 4
        -0x3aea3666    # -2396.6f
        0x453d219a    # 3026.1f
        0x44d09333    # 1668.6f
    .end array-data

    :array_2
    .array-data 4
        0x44a78333    # 1340.1f
        -0x3aee9ccd    # -2326.2f
        0x4499fccd    # 1231.9f
        0x441e8000    # 634.0f
    .end array-data

    :array_3
    .array-data 4
        0x44642666    # 912.6f
        0x444a399a    # 808.9f
        0x4326b333    # 166.7f
        -0x3c4d7333    # -357.1f
        0x42b2cccd    # 89.4f
    .end array-data

    :array_4
    .array-data 4
        -0x3c99199a    # -230.9f
        0x43b2999a    # 357.2f
        0x43484ccd    # 200.3f
        -0x3cf2e666    # -141.1f
        -0x3cdd0000    # -163.0f
        -0x3f066666    # -7.8f
    .end array-data

    :array_5
    .array-data 4
        0x4291999a    # 72.8f
        0x42893333    # 68.6f
        0x42980000    # 76.0f
        -0x3cf2999a    # -141.4f
        -0x3e49999a    # -22.8f
        0x41533333    # 13.2f
        -0x3d643333    # -77.9f
    .end array-data

    :array_6
    .array-data 4
        0x42a10000    # 80.5f
        -0x3d69cccd    # -75.1f
        -0x3f69999a    # -4.7f
        0x42353333    # 45.3f
        0x415e6666    # 13.9f
        0x41266666    # 10.4f
        0x3fd9999a    # 1.7f
        0x409ccccd    # 4.9f
    .end array-data

    :array_7
    .array-data 4
        0x41c33333    # 24.4f
        0x4101999a    # 8.1f
        -0x3e980000    # -14.5f
        -0x3f4ccccd    # -5.6f
        -0x3e65999a    # -19.3f
        0x41380000    # 11.5f
        0x412e6666    # 10.9f
        -0x3e9e6666    # -14.1f
        -0x3f933333    # -3.7f
    .end array-data

    :array_8
    .array-data 4
        0x40accccd    # 5.4f
        0x41166666    # 9.4f
        0x4059999a    # 3.4f
        -0x3f59999a    # -5.2f
        0x40466666    # 3.1f
        -0x3eb9999a    # -12.4f
        -0x40cccccd    # -0.7f
        0x41066666    # 8.4f
        -0x3ef80000    # -8.5f
        -0x3ede6666    # -10.1f
    .end array-data

    :array_9
    .array-data 4
        -0x40000000    # -2.0f
        -0x3f366666    # -6.3f
        0x3f666666    # 0.9f
        -0x40733333    # -1.1f
        -0x41b33333    # -0.2f
        0x40200000    # 2.5f
        -0x41666666    # -0.3f
        0x400ccccd    # 2.2f
        0x40466666    # 3.1f
        -0x40800000    # -1.0f
        -0x3fcccccd    # -2.8f
    .end array-data

    :array_a
    .array-data 4
        0x40400000    # 3.0f
        -0x40400000    # -1.5f
        -0x3ff9999a    # -2.1f
        0x3fd9999a    # 1.7f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x40b33333    # -0.8f
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x40733333    # 3.8f
    .end array-data

    :array_b
    .array-data 4
        -0x3ff33333    # -2.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        -0x40e66666    # -0.6f
        0x3f666666    # 0.9f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        -0x41333333    # -0.4f
        -0x41333333    # -0.4f
        0x3e4ccccd    # 0.2f
        -0x40b33333    # -0.8f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x459a8333    # 4944.4f
    .end array-data

    :array_d
    .array-data 4
        0x0
        -0x3ad6c4cd    # -2707.7f
        -0x3beff99a    # -576.1f
    .end array-data

    :array_e
    .array-data 4
        0x0
        -0x3cdfcccd    # -160.2f
        0x437be666    # 251.9f
        -0x3bf9d99a    # -536.6f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x438f3333    # 286.4f
        -0x3caccccd    # -211.2f
        0x43244ccd    # 164.3f
        -0x3c657333    # -309.1f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x42326666    # 44.6f
        0x433ce666    # 188.9f
        -0x3d13999a    # -118.2f
        0x0
        0x42c9cccd    # 100.9f
    .end array-data

    :array_11
    .array-data 4
        0x0
        -0x3e59999a    # -20.8f
        0x42306666    # 44.1f
        0x42760000    # 61.5f
        -0x3d7b6666    # -66.3f
        0x40466666    # 3.1f
        0x425c0000    # 55.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        -0x3d986666    # -57.9f
        -0x3e573333    # -21.1f
        0x40d00000    # 6.5f
        0x41c73333    # 24.9f
        0x40e00000    # 7.0f
        -0x3e226666    # -27.7f
        -0x3faccccd    # -3.3f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x41300000    # 11.0f
        -0x3e600000    # -20.0f
        0x413e6666    # 11.9f
        -0x3e74cccd    # -17.4f
        0x4185999a    # 16.7f
        0x40e00000    # 7.0f
        -0x3ed33333    # -10.8f
        0x3fd9999a    # 1.7f
    .end array-data

    :array_14
    .array-data 4
        0x0
        -0x3e5c0000    # -20.5f
        0x41380000    # 11.5f
        0x414ccccd    # 12.8f
        -0x3f19999a    # -7.2f
        -0x3f133333    # -7.4f
        0x41000000    # 8.0f
        0x40066666    # 2.1f
        -0x3f3ccccd    # -6.1f
        0x40e00000    # 7.0f
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x40333333    # 2.8f
        -0x42333333    # -0.1f
        0x40966666    # 4.7f
        0x408ccccd    # 4.4f
        -0x3f19999a    # -7.2f
        -0x40800000    # -1.0f
        -0x3f866666    # -3.9f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        -0x3efb3333    # -8.3f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3fd9999a    # 1.7f
        -0x40e66666    # -0.6f
        -0x4019999a    # -1.8f
        0x3f666666    # 0.9f
        -0x41333333    # -0.4f
        -0x3fe00000    # -2.5f
        -0x4059999a    # -1.3f
        -0x3ff9999a    # -2.1f
        -0x400ccccd    # -1.9f
        -0x4019999a    # -1.8f
    .end array-data

    :array_17
    .array-data 4
        0x0
        -0x4099999a    # -0.9f
        0x3e99999a    # 0.3f
        0x40066666    # 2.1f
        -0x3fe00000    # -2.5f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        -0x4099999a    # -0.9f
        -0x41b33333    # -0.2f
        0x3f666666    # 0.9f
    .end array-data

    :array_18
    .array-data 4
        0x4139999a    # 11.6f
        0x41840000    # 16.5f
    .end array-data

    :array_19
    .array-data 4
        -0x3ebe6666    # -12.1f
        -0x3f733333    # -4.4f
        0x3ff33333    # 1.9f
    .end array-data

    :array_1a
    .array-data 4
        0x3ecccccd    # 0.4f
        -0x3f7ccccd    # -4.1f
        -0x3fc66666    # -2.9f
        -0x3f09999a    # -7.7f
    .end array-data

    :array_1b
    .array-data 4
        -0x4019999a    # -1.8f
        0x40133333    # 2.3f
        -0x3ef4cccd    # -8.7f
        0x40933333    # 4.6f
        -0x3ff9999a    # -2.1f
    .end array-data

    :array_1c
    .array-data 4
        -0x40800000    # -1.0f
        0x3f19999a    # 0.6f
        -0x4019999a    # -1.8f
        -0x40800000    # -1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x40000000    # 2.0f
        -0x40266666    # -1.7f
        -0x41666666    # -0.3f
        0x3fd9999a    # 1.7f
    .end array-data

    :array_1e
    .array-data 4
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x40e66666    # -0.6f
        0x3fa66666    # 1.3f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        -0x40cccccd    # -0.7f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1f
    .array-data 4
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_20
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x0
        0x3e99999a    # 0.3f
        -0x41333333    # -0.4f
        -0x41666666    # -0.3f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x41333333    # -0.4f
        -0x41b33333    # -0.2f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x0
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_24
    .array-data 4
        0x0
        -0x3e30cccd    # -25.9f
    .end array-data

    :array_25
    .array-data 4
        0x0
        -0x3e4c0000    # -22.5f
        -0x3ec33333    # -11.8f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x40e9999a    # 7.3f
        -0x3f866666    # -3.9f
        -0x3fd9999a    # -2.6f
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x3f8ccccd    # 1.1f
        0x402ccccd    # 2.7f
        0x4079999a    # 3.9f
        -0x40b33333    # -0.8f
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3f99999a    # 1.2f
        0x40800000    # 4.0f
        -0x40e66666    # -0.6f
    .end array-data

    :array_29
    .array-data 4
        0x0
        -0x41b33333    # -0.2f
        -0x3ff9999a    # -2.1f
        -0x41333333    # -0.4f
        -0x40e66666    # -0.6f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x40b33333    # -0.8f
        -0x41666666    # -0.3f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2b
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x0
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x0
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFJ)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v20

    array-length v2, v0

    const v20, -0x3d4c0001    # -89.99999f

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    const v21, 0x42b3ffff    # 89.99999f

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct/range {p0 .. p3}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    sget-boolean v20, Landroid/hardware/GeomagneticField;->-assertionsDisabled:Z

    if-nez v20, :cond_1

    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/16 v20, 0x1

    :goto_0
    if-nez v20, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    :cond_1
    new-instance v11, Landroid/hardware/GeomagneticField$LegendreTable;

    add-int/lit8 v20, v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v22, v24, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    add-int/lit8 v20, v2, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v16, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    move/from16 v20, v0

    const v21, 0x45c7199a

    div-float v20, v21, v20

    const/16 v21, 0x1

    aput v20, v16, v21

    const/4 v9, 0x2

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    add-int/lit8 v20, v9, -0x1

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    mul-float v20, v20, v21

    aput v20, v16, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v2, [F

    move-object/from16 v17, v0

    new-array v3, v2, [F

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v17, v21

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aput v20, v17, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aput v20, v3, v21

    const/4 v14, 0x2

    :goto_2
    if-ge v14, v2, :cond_3

    shr-int/lit8 v18, v14, 0x1

    sub-int v20, v14, v18

    aget v20, v17, v20

    aget v21, v3, v18

    mul-float v20, v20, v21

    sub-int v21, v14, v18

    aget v21, v3, v21

    aget v22, v17, v18

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, v17, v14

    sub-int v20, v14, v18

    aget v20, v3, v20

    aget v21, v3, v18

    mul-float v20, v20, v21

    sub-int v21, v14, v18

    aget v21, v17, v21

    aget v22, v17, v18

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    aput v20, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    div-float v10, v21, v20

    sget-wide v20, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sub-long v20, p4, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x50eaf626

    div-float v19, v20, v21

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x1

    :goto_3
    if-ge v15, v2, :cond_5

    const/4 v14, 0x0

    :goto_4
    if-gt v14, v15, :cond_4

    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    aget-object v20, v20, v15

    aget v20, v20, v14

    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v21, v21, v19

    add-float v4, v20, v21

    sget-object v20, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    aget-object v20, v20, v15

    aget v20, v20, v14

    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v21, v21, v19

    add-float v8, v20, v21

    add-int/lit8 v20, v15, 0x2

    aget v20, v16, v20

    aget v21, v3, v14

    mul-float v21, v21, v4

    aget v22, v17, v14

    mul-float v22, v22, v8

    add-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    add-float v5, v5, v20

    add-int/lit8 v20, v15, 0x2

    aget v20, v16, v20

    int-to-float v0, v14

    move/from16 v21, v0

    mul-float v20, v20, v21

    aget v21, v17, v14

    mul-float v21, v21, v4

    aget v22, v3, v14

    mul-float v22, v22, v8

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    mul-float v20, v20, v10

    add-float v6, v6, v20

    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v15, 0x2

    aget v21, v16, v21

    mul-float v20, v20, v21

    aget v21, v3, v14

    mul-float v21, v21, v4

    aget v22, v17, v14

    mul-float v22, v22, v8

    add-float v21, v21, v22

    mul-float v20, v20, v21

    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v21, v21, v15

    aget v21, v21, v14

    mul-float v20, v20, v21

    sub-float v7, v7, v20

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_5
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v12, v20, v22

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mX:F

    move-object/from16 v0, p0

    iput v6, v0, Landroid/hardware/GeomagneticField;->mY:F

    neg-float v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mZ:F

    return-void
.end method

.method private computeGeocentricCoordinates(FFF)V
    .locals 12

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v0, p3, v8

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    div-float v7, v6, v1

    const v8, 0x4c1b2f2f    # 4.0680636E7f

    mul-float/2addr v8, v1

    mul-float/2addr v8, v1

    const v9, 0x4c1a253b    # 4.04083E7f

    mul-float/2addr v9, v6

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v8, v4, v0

    const v9, 0x4c1a253b    # 4.04083E7f

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v4, v0

    const v10, 0x4c1b2f2f    # 4.0680636E7f

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    mul-float v8, v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v0

    const v10, 0x4c1b2f2f    # 4.0680636E7f

    mul-float/2addr v10, v1

    mul-float/2addr v10, v1

    const v11, 0x4c1a253b    # 4.04083E7f

    mul-float/2addr v11, v6

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, 0x58bc2457

    mul-float/2addr v9, v1

    mul-float/2addr v9, v1

    const v10, 0x58b9a1a1

    mul-float/2addr v10, v6

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    const v10, 0x4c1b2f2f    # 4.0680636E7f

    mul-float/2addr v10, v1

    mul-float/2addr v10, v1

    const v11, 0x4c1a253b    # 4.04083E7f

    mul-float/2addr v11, v6

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    add-float v5, v8, v9

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    return-void
.end method

.method private static computeSchmidtQuasiNormFactors(I)[[F
    .locals 11

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    add-int/lit8 v3, p0, 0x1

    new-array v2, v3, [[F

    new-array v3, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v10

    aput-object v3, v2, v10

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p0, :cond_2

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [F

    aput-object v3, v2, v1

    aget-object v3, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget-object v6, v2, v6

    aget v6, v6, v10

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v1

    div-float/2addr v6, v7

    aput v6, v3, v10

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_1

    aget-object v6, v2, v1

    aget-object v3, v2, v1

    add-int/lit8 v7, v0, -0x1

    aget v7, v3, v7

    sub-int v3, v1, v0

    add-int/lit8 v8, v3, 0x1

    if-ne v0, v5, :cond_0

    move v3, v4

    :goto_2
    mul-int/2addr v3, v8

    int-to-float v3, v3

    add-int v8, v1, v0

    int-to-float v8, v8

    div-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float/2addr v3, v7

    aput v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public getDeclination()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFieldStrength()F
    .locals 3

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHorizontalStrength()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInclination()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
