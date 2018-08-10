.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mInverseTransform:[F

.field private final mIsSrgb:Z

.field private final mIsWideGamut:Z

.field private final mMax:F

.field private final mMin:F

.field private final mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mPrimaries:[F

.field private mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final mTransform:[F

.field private final mWhitePoint:[F


# direct methods
.method static synthetic -get0(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object v0
.end method

.method static synthetic -get3(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method static synthetic -get4(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object v0
.end method

.method static synthetic -get5(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object v0
.end method

.method private constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {p2}, Landroid/graphics/ColorSpace;->-wrap6([F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget v0, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v0, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-boolean v0, p1, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iget-boolean v0, p1, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$Rgb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 9

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 9

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FD)V
    .locals 10

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FDFFI)V
    .locals 14

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v6

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->ulp(F)F

    move-result v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v10, v6, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, p4

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    :goto_2
    iput-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void

    :cond_0
    new-instance v6, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$7;

    move-wide/from16 v0, p4

    invoke-direct {v6, v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$7;-><init>(D)V

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$8;

    move-wide/from16 v0, p4

    invoke-direct {v7, v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$8;-><init>(D)V

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v12, p4

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 9

    const-wide/16 v2, 0x0

    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;

    invoke-direct {v4, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;-><init>(Ljava/lang/Object;)V

    :goto_0
    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    new-instance v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;

    invoke-direct {v5, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;-><init>(Ljava/lang/Object;)V

    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void

    :cond_0
    new-instance v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$3;

    invoke-direct {v4, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$3;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$5;

    invoke-direct {v5, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$5;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V
    .locals 9

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, 0x0

    move/from16 v0, p8

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    array-length v1, p2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    array-length v1, p3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz p4, :cond_4

    if-nez p5, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The transfer functions of a color space cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    cmpl-float v1, p6, p7

    if-ltz v1, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid range: min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; min must be strictly < max"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1, v2}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v1}, Landroid/graphics/ColorSpace;->-wrap6([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p5, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput p6, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    move/from16 v0, p7

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    new-instance v8, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$6;

    invoke-direct {v8, p0}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$6;-><init>(Ljava/lang/Object;)V

    invoke-interface {p4, v8}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v8, p5}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    move/from16 v0, p7

    invoke-static {v1, p6, v0}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method private static area([F)F
    .locals 10

    const/4 v8, 0x0

    aget v4, p0, v8

    const/4 v8, 0x1

    aget v5, p0, v8

    const/4 v8, 0x2

    aget v2, p0, v8

    const/4 v8, 0x3

    aget v3, p0, v8

    const/4 v8, 0x4

    aget v0, p0, v8

    const/4 v8, 0x5

    aget v1, p0, v8

    mul-float v8, v4, v3

    mul-float v9, v5, v0

    add-float/2addr v8, v9

    mul-float v9, v2, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v0

    sub-float/2addr v8, v9

    mul-float v9, v5, v2

    sub-float/2addr v8, v9

    mul-float v9, v4, v1

    sub-float v6, v8, v9

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v8, v6

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    neg-float v7, v7

    :cond_0
    return v7
.end method

.method private clamp(D)D
    .locals 3

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    :goto_0
    float-to-double p1, v0

    :cond_0
    return-wide p1

    :cond_1
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    goto :goto_0
.end method

.method private static computePrimaries([F)[F
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v4

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v2

    new-array v6, v11, [F

    fill-array-data v6, :array_2

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v0

    aget v6, v4, v8

    aget v7, v4, v9

    add-float/2addr v6, v7

    aget v7, v4, v10

    add-float v5, v6, v7

    aget v6, v2, v8

    aget v7, v2, v9

    add-float/2addr v6, v7

    aget v7, v2, v10

    add-float v3, v6, v7

    aget v6, v0, v8

    aget v7, v0, v9

    add-float/2addr v6, v7

    aget v7, v0, v10

    add-float v1, v6, v7

    const/4 v6, 0x6

    new-array v6, v6, [F

    aget v7, v4, v8

    div-float/2addr v7, v5

    aput v7, v6, v8

    aget v7, v4, v9

    div-float/2addr v7, v5

    aput v7, v6, v9

    aget v7, v2, v8

    div-float/2addr v7, v3

    aput v7, v6, v10

    aget v7, v2, v9

    div-float/2addr v7, v3

    aput v7, v6, v11

    aget v7, v0, v8

    div-float/2addr v7, v1

    const/4 v8, 0x4

    aput v7, v6, v8

    aget v7, v0, v9

    div-float/2addr v7, v1

    const/4 v8, 0x5

    aput v7, v6, v8

    return-object v6

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeWhitePoint([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v1

    aget v2, v1, v4

    aget v3, v1, v5

    add-float/2addr v2, v3

    aget v3, v1, v6

    add-float v0, v2, v3

    new-array v2, v6, [F

    aget v3, v1, v4

    div-float/2addr v3, v0

    aput v3, v2, v4

    aget v3, v1, v5

    div-float/2addr v3, v0

    aput v3, v2, v5

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeXYZMatrix([F[F)[F
    .locals 27

    const/16 v23, 0x0

    aget v13, p0, v23

    const/16 v23, 0x1

    aget v15, p0, v23

    const/16 v23, 0x2

    aget v8, p0, v23

    const/16 v23, 0x3

    aget v10, p0, v23

    const/16 v23, 0x4

    aget v3, p0, v23

    const/16 v23, 0x5

    aget v5, p0, v23

    const/16 v23, 0x0

    aget v16, p1, v23

    const/16 v23, 0x1

    aget v18, p1, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v13

    div-float v21, v23, v15

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v8

    div-float v20, v23, v10

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v3

    div-float v19, v23, v5

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v16

    div-float v22, v23, v18

    div-float v14, v13, v15

    div-float v9, v8, v10

    div-float v4, v3, v5

    div-float v17, v16, v18

    sub-float v23, v22, v21

    sub-float v24, v9, v14

    mul-float v23, v23, v24

    sub-float v24, v17, v14

    sub-float v25, v20, v21

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    sub-float v24, v19, v21

    sub-float v25, v9, v14

    mul-float v24, v24, v25

    sub-float v25, v4, v14

    sub-float v26, v20, v21

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    div-float v1, v23, v24

    sub-float v23, v17, v14

    sub-float v24, v4, v14

    mul-float v24, v24, v1

    sub-float v23, v23, v24

    sub-float v24, v9, v14

    div-float v6, v23, v24

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v6

    sub-float v11, v23, v1

    div-float v12, v11, v15

    div-float v7, v6, v10

    div-float v2, v1, v5

    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    mul-float v24, v12, v13

    const/16 v25, 0x0

    aput v24, v23, v25

    const/16 v24, 0x1

    aput v11, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v13

    sub-float v24, v24, v15

    mul-float v24, v24, v12

    const/16 v25, 0x2

    aput v24, v23, v25

    mul-float v24, v7, v8

    const/16 v25, 0x3

    aput v24, v23, v25

    const/16 v24, 0x4

    aput v6, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v8

    sub-float v24, v24, v10

    mul-float v24, v24, v7

    const/16 v25, 0x5

    aput v24, v23, v25

    mul-float v24, v2, v3

    const/16 v25, 0x6

    aput v24, v23, v25

    const/16 v24, 0x7

    aput v1, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v3

    sub-float v24, v24, v5

    mul-float v24, v24, v2

    const/16 v25, 0x8

    aput v24, v23, v25

    return-object v23
.end method

.method private static contains([F[F)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [F

    aget v1, p0, v6

    aget v2, p1, v6

    sub-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v7

    aget v2, p1, v7

    sub-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v8

    aget v2, p1, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v9

    aget v2, p1, v9

    sub-float/2addr v1, v2

    aput v1, v0, v9

    aget v1, p0, v10

    aget v2, p1, v10

    sub-float/2addr v1, v2

    aput v1, v0, v10

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    aget v1, v0, v6

    aget v2, v0, v7

    aget v3, p1, v6

    aget v4, p1, v10

    sub-float/2addr v3, v4

    aget v4, p1, v7

    const/4 v5, 0x5

    aget v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v1, p1, v6

    aget v2, p1, v8

    sub-float/2addr v1, v2

    aget v2, p1, v7

    aget v3, p1, v9

    sub-float/2addr v2, v3

    aget v3, v0, v6

    aget v4, v0, v7

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    return v6

    :cond_1
    aget v1, v0, v8

    aget v2, v0, v9

    aget v3, p1, v8

    aget v4, p1, v6

    sub-float/2addr v3, v4

    aget v4, p1, v9

    aget v5, p1, v7

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    aget v1, p1, v8

    aget v2, p1, v10

    sub-float/2addr v1, v2

    aget v2, p1, v9

    const/4 v3, 0x5

    aget v3, p1, v3

    sub-float/2addr v2, v3

    aget v3, v0, v8

    aget v4, v0, v9

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    :cond_2
    return v6

    :cond_3
    aget v1, v0, v10

    const/4 v2, 0x5

    aget v2, v0, v2

    aget v3, p1, v10

    aget v4, p1, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p1, v4

    aget v5, p1, v9

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    aget v1, p1, v10

    aget v2, p1, v6

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    aget v3, p1, v7

    sub-float/2addr v2, v3

    aget v3, v0, v10

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    :cond_4
    return v6

    :cond_5
    return v7
.end method

.method private static cross(FFFF)F
    .locals 2

    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .locals 8

    const/4 v3, 0x1

    const-wide v6, 0x3fe000d1b71758e2L    # 0.5001

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    if-nez p6, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/graphics/ColorSpace;->-get2()[F

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p2, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    return v2

    :cond_3
    invoke-interface {p3, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    return v3
.end method

.method private static isWideGamut([FFF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v2

    invoke-static {}, Landroid/graphics/ColorSpace;->-get1()[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v3

    div-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->-get2()[F

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_106776(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 13

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-wrap2(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_106922(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 19

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-wrap1(DDDDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_107152(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 13

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-wrap4(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_107295(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 19

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-wrap3(DDDDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_113213(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_113354(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static xyPrimaries([F)[F
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    new-array v1, v5, [F

    array-length v2, p0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    aget v2, p0, v4

    aget v3, p0, v6

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p0, v3

    add-float v0, v2, v3

    aget v2, p0, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    aget v2, p0, v6

    div-float/2addr v2, v0

    aput v2, v1, v6

    aget v2, p0, v7

    aget v3, p0, v8

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    add-float v0, v2, v3

    aget v2, p0, v7

    div-float/2addr v2, v0

    const/4 v3, 0x2

    aput v2, v1, v3

    aget v2, p0, v8

    div-float/2addr v2, v0

    aput v2, v1, v7

    aget v2, p0, v5

    const/4 v3, 0x7

    aget v3, p0, v3

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    add-float v0, v2, v3

    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, v1, v8

    const/4 v2, 0x7

    aget v2, p0, v2

    div-float/2addr v2, v0

    const/4 v3, 0x5

    aput v2, v1, v3

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method

.method private static xyWhitePoint([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v6, [F

    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget v2, p0, v4

    aget v3, p0, v5

    add-float/2addr v2, v3

    aget v3, p0, v6

    add-float v0, v2, v3

    aget v2, p0, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_graphics_ColorSpace$Rgb-mthref-0(D)D
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Rgb;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    iget v1, v0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget v1, v0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_8
    iget-object v1, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_9

    return v4

    :cond_9
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public fromLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public fromLinear([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    return-object p1
.end method

.method public fromXyz([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    return-object p1
.end method

.method public getEotf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getInverseTransform()[F
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getInverseTransform([F)[F
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return v0
.end method

.method public getMinValue(I)F
    .locals 1

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return v0
.end method

.method public getOetf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getPrimaries()[F
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getPrimaries([F)[F
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method public getTransform()[F
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getTransform([F)[F
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getWhitePoint()[F
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getWhitePoint([F)[F
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    aget v0, v0, v1

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    aget v0, v0, v2

    aput v0, p1, v2

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_1
    return v0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isSrgb()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public toLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public toLinear([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    return-object p1
.end method

.method public toXyz([F)[F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v0

    return-object v0
.end method
