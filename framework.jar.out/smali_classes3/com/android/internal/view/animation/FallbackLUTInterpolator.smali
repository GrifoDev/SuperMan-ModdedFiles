.class public Lcom/android/internal/view/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p2, p3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .locals 13

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v2

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v0, v8

    long-to-double v8, p1

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    const/4 v9, 0x2

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v8, 0x12c

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [F

    add-int/lit8 v8, v6, -0x1

    int-to-float v5, v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    int-to-float v8, v1

    div-float v4, v8, v5

    invoke-interface {p0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 5

    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
