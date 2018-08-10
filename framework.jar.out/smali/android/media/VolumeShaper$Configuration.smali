.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$1;,
        Landroid/media/VolumeShaper$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final TYPE_ID:I = 0x0

.field static final TYPE_SCALE:I = 0x1


# instance fields
.field private final mDurationMs:D

.field private final mId:I

.field private final mInterpolatorType:I

.field private final mOptionFlags:I

.field private final mTimes:[F

.field private final mType:I

.field private final mVolumes:[F


# direct methods
.method static synthetic -wrap0([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static synthetic -wrap1(FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static synthetic -wrap2([FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    const-wide/16 v12, 0x3e8

    const/16 v11, 0x10

    const/4 v10, 0x2

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    new-array v7, v10, [F

    fill-array-data v7, :array_2

    new-array v8, v10, [F

    fill-array-data v8, :array_3

    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    const/16 v0, 0x10

    new-array v5, v11, [F

    new-array v4, v11, [F

    new-array v2, v11, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_0

    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    aput v6, v5, v1

    aget v6, v5, v1

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    aput v3, v4, v1

    mul-float v6, v3, v3

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method private constructor <init>(IIIDI[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method synthetic constructor <init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "times array must be non-null"

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "volumes array must be non-null"

    return-object v1

    :cond_1
    array-length v1, p0

    array-length v4, p1

    if-eq v1, v4, :cond_2

    const-string/jumbo v1, "array length must match"

    return-object v1

    :cond_2
    array-length v1, p0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    const-string/jumbo v1, "array length must be at least 2"

    return-object v1

    :cond_3
    array-length v1, p0

    const/16 v4, 0x10

    if-le v1, v4, :cond_4

    const-string/jumbo v1, "array length must be no larger than 16"

    return-object v1

    :cond_4
    aget v1, p0, v3

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    const-string/jumbo v1, "times must start at 0.f"

    return-object v1

    :cond_5
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_6

    const-string/jumbo v1, "times must end at 1.f"

    return-object v1

    :cond_6
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_9

    aget v1, p0, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p0, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    move v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "times not monotonic increasing, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_c

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget v1, p1, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_a

    move v1, v2

    :goto_3
    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for log scale cannot be positive, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_a
    move v1, v3

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget v1, p1, v0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_e

    move v1, v2

    :goto_5
    if-eqz v1, :cond_d

    aget v1, p1, v0

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_f

    move v1, v2

    :goto_6
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_e
    move v1, v3

    goto :goto_5

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-object v6
.end method

.method private static checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static checkValidVolumeAndThrowException(FZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_0

    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dbfs volume must be 0.f or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    cmpl-float v2, p0, v2

    if-ltz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_4

    :goto_2
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static clampVolume([FZ)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_7

    aget v1, p0, v0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    aput v4, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_7

    aget v1, p0, v0

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    move v1, v2

    :goto_3
    if-nez v1, :cond_5

    aput v4, p0, v0

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    aget v1, p0, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_6

    move v1, v2

    :goto_5
    if-nez v1, :cond_3

    aput v5, p0, v0

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    return-void
.end method

.method public static getMaximumCurvePoints()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v1, v3, :cond_3

    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v6, v0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v1, v4, v6

    if-nez v1, :cond_3

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v3, v0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object v2, v0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method getAllOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public getOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public getVolumes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "}"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mOptionFlags = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mDurationMs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mInterpolatorType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mTimes[] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mVolumes[] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
