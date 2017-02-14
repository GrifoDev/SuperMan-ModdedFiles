.class public Lcom/android/launcher2/utils/interpolator/SineInOut80;
.super Landroid/view/animation/BaseInterpolator;
.source "SineInOut80.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/utils/interpolator/SineInOut80;->segments:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e47ae14    # 0.195f
    .end array-data

    :array_1
    .array-data 4
        0x3e47ae14    # 0.195f
        0x3ef5c28f    # 0.48f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_2
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f55c28f    # 0.835f
        0x3f628f5c    # 0.885f
    .end array-data

    :array_3
    .array-data 4
        0x3f628f5c    # 0.885f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    sget-object v0, Lcom/android/launcher2/utils/interpolator/SineInOut80;->segments:[[F

    invoke-static {p1, v0}, Lcom/android/launcher2/utils/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
