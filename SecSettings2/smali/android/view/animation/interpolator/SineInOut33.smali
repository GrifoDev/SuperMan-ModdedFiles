.class public Landroid/view/animation/interpolator/SineInOut33;
.super Ljava/lang/Object;
.source "SineInOut33.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const v6, 0x3efd70a4    # 0.495f

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [[F

    new-array v1, v7, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    const v2, 0x3d4ccccd    # 0.05f

    aput v2, v1, v4

    aput v6, v1, v5

    aput-object v1, v0, v3

    new-array v1, v7, [F

    aput v6, v1, v3

    const v2, 0x3f70a3d7    # 0.94f

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/animation/interpolator/SineInOut33;->segments:[[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    sget-object v0, Landroid/view/animation/interpolator/SineInOut33;->segments:[[F

    invoke-static {p1, v0}, Landroid/view/animation/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
