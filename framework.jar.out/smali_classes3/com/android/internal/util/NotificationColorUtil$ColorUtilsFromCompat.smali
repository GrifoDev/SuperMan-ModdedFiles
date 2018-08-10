.class Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationColorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorUtilsFromCompat"
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 12

    const/4 v10, 0x0

    aget v3, p0, v10

    const/4 v10, 0x1

    aget v8, p0, v10

    const/4 v10, 0x2

    aget v5, p0, v10

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float v1, v10, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    const/high16 v10, 0x42700000    # 60.0f

    div-float v10, v3, v10

    const/high16 v11, 0x40000000    # 2.0f

    rem-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float v9, v1, v10

    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v7, v10, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v7

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v2, v10, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v2

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v0, v10, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v0

    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_0
    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_1
    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_4
    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_5
    add-float v10, v1, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v10, v9, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .locals 8

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToXYZ(DDD[D)V

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 18

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    add-double v14, v14, p0

    const-wide/high16 v16, 0x405d000000000000L    # 116.0

    div-double v2, v14, v16

    const-wide v14, 0x407f400000000000L    # 500.0

    div-double v14, p2, v14

    add-double v0, v14, v2

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    div-double v14, p4, v14

    sub-double v4, v2, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v14, v6, v14

    if-lez v14, :cond_0

    move-wide v8, v6

    :goto_0
    const-wide v14, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v14, p0, v14

    if-lez v14, :cond_1

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_1
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v14, v6, v14

    if-lez v14, :cond_2

    move-wide v12, v6

    :goto_2
    const-wide v14, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v14, v8

    const/16 v16, 0x0

    aput-wide v14, p6, v16

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v10

    const/16 v16, 0x1

    aput-wide v14, p6, v16

    const-wide v14, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v14, v12

    const/16 v16, 0x2

    aput-wide v14, p6, v16

    return-void

    :cond_0
    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    mul-double/2addr v14, v0

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    sub-double v14, v14, v16

    const-wide v16, 0x408c3a6666666666L    # 903.3

    div-double v8, v14, v16

    goto :goto_0

    :cond_1
    const-wide v14, 0x408c3a6666666666L    # 903.3

    div-double v10, p0, v14

    goto :goto_1

    :cond_2
    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    mul-double/2addr v14, v4

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    sub-double v14, v14, v16

    const-wide v16, 0x408c3a6666666666L    # 903.3

    div-double v12, v14, v16

    goto :goto_2
.end method

.method public static RGBToHSL(III[F)V
    .locals 11

    int-to-float v9, p0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v7, v9, v10

    int-to-float v9, p1

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    int-to-float v9, p2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v1, v5, v6

    add-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    cmpl-float v9, v5, v6

    if-nez v9, :cond_1

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v9, 0x42700000    # 60.0f

    mul-float/2addr v9, v3

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float v3, v9, v10

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_0

    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v3, v9

    :cond_0
    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    invoke-static {v3, v9, v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v9

    const/4 v10, 0x0

    aput v9, p3, v10

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v9

    const/4 v10, 0x1

    aput v9, p3, v10

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v9

    const/4 v10, 0x2

    aput v9, p3, v10

    return-void

    :cond_1
    cmpl-float v9, v5, v7

    if-nez v9, :cond_2

    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float v3, v9, v10

    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    div-float v8, v1, v9

    goto :goto_0

    :cond_2
    cmpl-float v9, v5, v2

    if-nez v9, :cond_3

    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    add-float v3, v9, v10

    goto :goto_1

    :cond_3
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000    # 4.0f

    add-float v3, v9, v10

    goto :goto_1
.end method

.method public static RGBToLAB(III[D)V
    .locals 7

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    const/4 v4, 0x2

    aget-wide v4, p3, v4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToLAB(DDD[D)V

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 10

    array-length v6, p3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "outXyz must have a length of 3."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    int-to-double v6, p0

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v4, v6, v8

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v4, v6

    :goto_0
    int-to-double v6, p1

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v2, v6, v8

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v6, v2, v6

    if-gez v6, :cond_2

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v6

    :goto_1
    int-to-double v6, p2

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v0, v6, v8

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v6, v0, v6

    if-gez v6, :cond_3

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v6

    :goto_2
    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v4

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const/4 v8, 0x0

    aput-wide v6, p3, v8

    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aput-wide v6, p3, v8

    const-wide v6, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v6, v4

    const-wide v8, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    aput-wide v6, p3, v8

    return-void

    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v4

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto/16 :goto_0

    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v2

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_1

    :cond_3
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v0

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto/16 :goto_2
.end method

.method public static XYZToColor(DDD)I
    .locals 12

    const-wide v6, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v6, p0

    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v4, v6, v8

    const-wide v6, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v6, p0

    const-wide v8, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3fa53f7ced916873L    # 0.0415

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v2, v6, v8

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v0, v6, v8

    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v4, v6, v8

    :goto_0
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v2, v6

    if-lez v6, :cond_1

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v2, v6, v8

    :goto_1
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v0, v6

    if-lez v6, :cond_2

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v0, v6, v8

    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v7

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    const/16 v10, 0xff

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    return v6

    :cond_0
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v4, v6

    goto :goto_0

    :cond_1
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v2, v6

    goto :goto_1

    :cond_2
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v0, v6

    goto :goto_2
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 6

    array-length v0, p6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    mul-double/2addr v2, p2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p6, v2

    sub-double v0, p0, p2

    const-wide v2, 0x407f400000000000L    # 500.0

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    aput-wide v0, p6, v2

    sub-double v0, p2, p4

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    mul-double/2addr v0, v2

    const/4 v2, 0x2

    aput-wide v0, p6, v2

    return-void
.end method

.method public static calculateContrast(II)D
    .locals 10

    const/16 v7, 0xff

    const-wide v8, 0x3fa999999999999aL    # 0.05

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eq v4, v7, :cond_0

    const-string/jumbo v4, "NotificationColorUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "background can not be translucent: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ge v4, v7, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result p0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v4

    add-double v0, v4, v8

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v4

    add-double v2, v4, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .locals 6

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToXYZ(I[D)V

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static colorToHSL(I[F)V
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2

    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeAlpha(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v5

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v1

    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static getTempDouble3Array()[D
    .locals 2

    sget-object v1, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_0

    const/4 v1, 0x3

    new-array v0, v1, [D

    sget-object v1, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .locals 4

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    goto :goto_0
.end method
