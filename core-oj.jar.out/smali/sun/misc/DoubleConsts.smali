.class public Lsun/misc/DoubleConsts;
.super Ljava/lang/Object;
.source "DoubleConsts.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final EXP_BIAS:I = 0x3ff

.field public static final EXP_BIT_MASK:J = 0x7ff0000000000000L

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_SUB_EXPONENT:I = -0x432

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIGNIFICAND_WIDTH:I = 0x35

.field public static final SIGNIF_BIT_MASK:J = 0xfffffffffffffL

.field public static final SIGN_BIT_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/misc/DoubleConsts;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/DoubleConsts;->-assertionsDisabled:Z

    sget-boolean v0, Lsun/misc/DoubleConsts;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
