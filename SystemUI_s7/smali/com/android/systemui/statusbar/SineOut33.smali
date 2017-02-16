.class public Lcom/android/systemui/statusbar/SineOut33;
.super Landroid/view/animation/BaseInterpolator;
.source "SineOut33.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x2

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/SineOut33;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ec5a1cb    # 0.386f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_1
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f7645a2    # 0.962f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/SineOut33;->segments:[[F

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
