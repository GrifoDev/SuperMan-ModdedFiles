.class public Lcom/android/launcher2/utils/interpolator/SineInOut33;
.super Landroid/view/animation/BaseInterpolator;
.source "SineInOut33.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/utils/interpolator/SineInOut33;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3efd70a4    # 0.495f
    .end array-data

    :array_1
    .array-data 4
        0x3efd70a4    # 0.495f
        0x3f70a3d7    # 0.94f
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

    sget-object v0, Lcom/android/launcher2/utils/interpolator/SineInOut33;->segments:[[F

    invoke-static {p1, v0}, Lcom/android/launcher2/utils/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
