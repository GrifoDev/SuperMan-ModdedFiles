.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$1;,
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I = null

.field private static b5p:[Lsun/misc/FDBigInt; = null

.field private static final big10pow:[D

.field static final bigDecimalExponent:I = 0x144

.field static final expBias:I = 0x3ff

.field static final expMask:J = 0x7ff0000000000000L

.field static final expOne:J = 0x3ff0000000000000L

.field static final expShift:I = 0x34

.field static final fractHOB:J = 0x10000000000000L

.field static final fractMask:J = 0xfffffffffffffL

.field static final highbit:J = -0x8000000000000000L

.field static final highbyte:J = -0x100000000000000L

.field private static final infinity:[C

.field static final intDecimalDigits:I = 0x9

.field private static final long5pow:[J

.field static final lowbytes:J = 0xffffffffffffffL

.field static final maxDecimalDigits:I = 0xf

.field static final maxDecimalExponent:I = 0x134

.field static final maxSmallBinExp:I = 0x3e

.field private static final maxSmallTen:I

.field static final minDecimalExponent:I = -0x144

.field static final minSmallBinExp:I = -0x15

.field private static final n5bits:[I

.field private static final notANumber:[C

.field private static perThreadBuffer:Ljava/lang/ThreadLocal; = null

.field static final signMask:J = -0x8000000000000000L

.field static final singleExpBias:I = 0x7f

.field static final singleExpMask:I = 0x7f800000

.field static final singleExpShift:I = 0x17

.field static final singleFractHOB:I = 0x800000

.field static final singleFractMask:I = 0x7fffff

.field static final singleMaxDecimalDigits:I = 0x7

.field static final singleMaxDecimalExponent:I = 0x26

.field private static final singleMaxSmallTen:I

.field static final singleMinDecimalExponent:I = -0x2d

.field static final singleSignMask:I = -0x80000000

.field private static final singleSmall10pow:[F

.field private static final small10pow:[D

.field private static final small5pow:[I

.field private static final tiny10pow:[D

.field private static final zero:[C


# instance fields
.field bigIntExp:I

.field bigIntNBits:I

.field decExponent:I

.field decExponentRounded:I

.field digits:[C

.field private form:Lsun/misc/FormattedFloatingDecimal$Form;

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field precision:I

.field roundDir:I


# direct methods
.method private static synthetic -getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal$Form;->values()[Lsun/misc/FormattedFloatingDecimal$Form;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    const/16 v2, 0x8

    const/4 v1, 0x5

    const-class v0, Lsun/misc/FormattedFloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    .line 1144
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    .line 1662
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    .line 1671
    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    .line 1677
    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    .line 1679
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    .line 1682
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    .line 1683
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    .line 1685
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    .line 1703
    new-array v0, v3, [J

    fill-array-data v0, :array_5

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    .line 1734
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    .line 1764
    new-array v0, v2, [C

    fill-array-data v0, :array_7

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    .line 1765
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    .line 1766
    new-array v0, v2, [C

    fill-array-data v0, :array_9

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    .line 33
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1662
    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    .line 1671
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    .line 1677
    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    .line 1679
    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data

    .line 1685
    :array_4
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    .line 1703
    :array_5
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data

    .line 1734
    :array_6
    .array-data 4
        0x0
        0x3
        0x5
        0x7
        0xa
        0xc
        0xe
        0x11
        0x13
        0x15
        0x18
        0x1a
        0x1c
        0x1f
        0x21
        0x23
        0x26
        0x28
        0x2a
        0x2d
        0x2f
        0x31
        0x34
        0x36
        0x38
        0x3b
        0x3d
    .end array-data

    .line 1764
    :array_7
    .array-data 2
        0x49s
        0x6es
        0x66s
        0x69s
        0x6es
        0x69s
        0x74s
        0x79s
    .end array-data

    .line 1765
    :array_8
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    .line 1766
    nop

    :array_9
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 469
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    const v1, 0x7fffffff

    invoke-direct {p0, p1, p2, v1, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 467
    return-void
.end method

.method public constructor <init>(DILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 11
    .param p1, "d"    # D
    .param p3, "precision"    # I
    .param p4, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    const/4 v6, 0x0

    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 474
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 479
    .local v2, "dBits":J
    iput p3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 480
    iput-object p4, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 483
    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 484
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 485
    const-wide/high16 v6, -0x8000000000000000L

    xor-long/2addr v2, v6

    .line 491
    :goto_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v6, v2

    const/16 v8, 0x34

    shr-long/2addr v6, v8

    long-to-int v0, v6

    .line 492
    .local v0, "binExp":I
    const-wide v6, 0xfffffffffffffL

    and-long v4, v2, v6

    .line 493
    .local v4, "fractBits":J
    const/16 v6, 0x7ff

    if-ne v0, v6, :cond_2

    .line 494
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 495
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 496
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 501
    :goto_1
    iget-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    array-length v6, v6

    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 502
    return-void

    .line 487
    .end local v0    # "binExp":I
    .end local v4    # "fractBits":J
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_0

    .line 498
    .restart local v0    # "binExp":I
    .restart local v4    # "fractBits":J
    :cond_1
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 499
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_1

    .line 504
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 509
    if-nez v0, :cond_5

    .line 510
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 512
    const/4 v6, 0x0

    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 513
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 514
    const/4 v6, 0x1

    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 515
    return-void

    .line 517
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 518
    const/4 v6, 0x1

    shl-long/2addr v4, v6

    .line 519
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 521
    :cond_4
    add-int/lit8 v6, v0, 0x34

    add-int/lit8 v1, v6, 0x1

    .line 522
    .local v1, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    .line 527
    :goto_3
    add-int/lit16 v0, v0, -0x3ff

    .line 529
    invoke-direct {p0, v0, v4, v5, v1}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    .line 472
    return-void

    .line 524
    .end local v1    # "nSignificantBits":I
    :cond_5
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v4, v6

    .line 525
    const/16 v1, 0x35

    .restart local v1    # "nSignificantBits":I
    goto :goto_3
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 537
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v1, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(FILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 535
    return-void
.end method

.method public constructor <init>(FILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 9
    .param p1, "f"    # F
    .param p2, "precision"    # I
    .param p3, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    .prologue
    const/high16 v7, 0x800000

    const/high16 v6, -0x80000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 541
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 546
    .local v1, "fBits":I
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 547
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 550
    and-int v4, v1, v6

    if-eqz v4, :cond_0

    .line 551
    iput-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 552
    xor-int/2addr v1, v6

    .line 558
    :goto_0
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    .line 559
    .local v0, "binExp":I
    const v4, 0x7fffff

    and-int v2, v1, v4

    .line 560
    .local v2, "fractBits":I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    .line 561
    iput-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 562
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 563
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 568
    :goto_1
    iget-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    array-length v4, v4

    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 569
    return-void

    .line 554
    .end local v0    # "binExp":I
    .end local v2    # "fractBits":I
    :cond_0
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_0

    .line 565
    .restart local v0    # "binExp":I
    .restart local v2    # "fractBits":I
    :cond_1
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 566
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_1

    .line 571
    :cond_2
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 576
    if-nez v0, :cond_5

    .line 577
    if-nez v2, :cond_3

    .line 579
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 580
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 581
    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 582
    return-void

    .line 584
    :cond_3
    :goto_2
    and-int v4, v2, v7

    if-nez v4, :cond_4

    .line 585
    shl-int/lit8 v2, v2, 0x1

    .line 586
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 588
    :cond_4
    add-int/lit8 v4, v0, 0x17

    add-int/lit8 v3, v4, 0x1

    .line 589
    .local v3, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    .line 594
    :goto_3
    add-int/lit8 v0, v0, -0x7f

    .line 596
    int-to-long v4, v2

    const/16 v6, 0x1d

    shl-long/2addr v4, v6

    invoke-direct {p0, v0, v4, v5, v3}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    .line 539
    return-void

    .line 591
    .end local v3    # "nSignificantBits":I
    :cond_5
    or-int/2addr v2, v7

    .line 592
    const/16 v3, 0x18

    .restart local v3    # "nSignificantBits":I
    goto :goto_3
.end method

.method private constructor <init>(ZI[CIZILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 1
    .param p1, "negSign"    # Z
    .param p2, "decExponent"    # I
    .param p3, "digits"    # [C
    .param p4, "n"    # I
    .param p5, "e"    # Z
    .param p6, "precision"    # I
    .param p7, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 53
    iput-boolean p1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 54
    iput-boolean p5, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 55
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 56
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 57
    iput p4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 58
    iput p6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 59
    iput-object p7, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 51
    return-void
.end method

.method private applyPrecision(I)[C
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/16 v7, 0x35

    const/16 v6, 0x31

    const/16 v4, 0x39

    const/4 v5, 0x0

    .line 425
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    new-array v2, v3, [C

    .line 426
    .local v2, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const/16 v3, 0x30

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 430
    :cond_1
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 431
    return-object v2

    .line 433
    :cond_2
    if-nez p1, :cond_4

    .line 436
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v3, v3, v5

    if-lt v3, v7, :cond_3

    .line 437
    aput-char v6, v2, v5

    .line 439
    :cond_3
    return-object v2

    .line 442
    :cond_4
    move v0, p1

    .line 443
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v1, v3, p1

    .line 444
    .local v1, "q":I
    if-lt v1, v7, :cond_7

    if-lez p1, :cond_7

    .line 445
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v0, p1, -0x1

    aget-char v1, v3, v0

    .line 446
    if-ne v1, v4, :cond_6

    .line 447
    :goto_1
    if-ne v1, v4, :cond_5

    if-lez v0, :cond_5

    .line 448
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v3, v0

    goto :goto_1

    .line 450
    :cond_5
    if-ne v1, v4, :cond_6

    .line 452
    aput-char v6, v2, v5

    .line 453
    return-object v2

    .line 456
    :cond_6
    add-int/lit8 v3, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 458
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    .line 459
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v3, v3, v0

    aput-char v3, v2, v0

    goto :goto_2

    .line 461
    :cond_8
    return-object v2
.end method

.method private static declared-synchronized big5pow(I)Lsun/misc/FDBigInt;
    .locals 10
    .param p0, "p"    # I

    .prologue
    const/4 v5, 0x0

    const-class v6, Lsun/misc/FormattedFloatingDecimal;

    monitor-enter v6

    .line 137
    :try_start_0
    sget-boolean v7, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    if-ltz p0, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 138
    :cond_1
    :try_start_1
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    if-nez v5, :cond_3

    .line 139
    add-int/lit8 v5, p0, 0x1

    new-array v5, v5, [Lsun/misc/FDBigInt;

    sput-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    .line 145
    :cond_2
    :goto_0
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v5, v5, p0

    if-eqz v5, :cond_4

    .line 146
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v5, v5, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v5

    .line 140
    :cond_3
    :try_start_2
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v5, v5

    if-gt v5, p0, :cond_2

    .line 141
    add-int/lit8 v5, p0, 0x1

    new-array v4, v5, [Lsun/misc/FDBigInt;

    .line 142
    .local v4, "t":[Lsun/misc/FDBigInt;
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    sput-object v4, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    goto :goto_0

    .line 147
    .end local v4    # "t":[Lsun/misc/FDBigInt;
    :cond_4
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v5, v5

    if-ge p0, v5, :cond_5

    .line 148
    new-instance v5, Lsun/misc/FDBigInt;

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v7, v7, p0

    invoke-direct {v5, v7}, Lsun/misc/FDBigInt;-><init>(I)V

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 149
    :cond_5
    :try_start_3
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    array-length v5, v5

    if-ge p0, v5, :cond_6

    .line 150
    new-instance v5, Lsun/misc/FDBigInt;

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v8, v7, p0

    invoke-direct {v5, v8, v9}, Lsun/misc/FDBigInt;-><init>(J)V

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v5

    .line 159
    :cond_6
    shr-int/lit8 v2, p0, 0x1

    .line 160
    .local v2, "q":I
    sub-int v3, p0, v2

    .line 161
    .local v3, "r":I
    :try_start_4
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v5, v2

    .line 162
    .local v0, "bigq":Lsun/misc/FDBigInt;
    if-nez v0, :cond_7

    .line 163
    invoke-static {v2}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 164
    :cond_7
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 165
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v5

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-object v5

    .line 167
    :cond_8
    :try_start_5
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v1, v5, v3

    .line 168
    .local v1, "bigr":Lsun/misc/FDBigInt;
    if-nez v1, :cond_9

    .line 169
    invoke-static {v3}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    .line 170
    :cond_9
    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v5

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    return-object v5
.end method

.method private checkExponent(I)I
    .locals 5
    .param p1, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 412
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 413
    :cond_0
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    return v1

    .line 415
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 416
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v2, v2, v0

    const/16 v3, 0x39

    if-eq v2, v3, :cond_2

    .line 418
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    return v1

    .line 415
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v3, v3, p1

    const/16 v4, 0x35

    if-lt v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v1, v2

    return v1
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .locals 2
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    .prologue
    .line 198
    new-instance v0, Lsun/misc/FDBigInt;

    invoke-static {p0}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    .line 199
    .local v0, "v":Lsun/misc/FDBigInt;
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 202
    :cond_0
    return-object v0
.end method

.method private static countBits(J)I
    .locals 8
    .param p0, "v"    # J

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 109
    cmp-long v1, p0, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    :goto_0
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 112
    shl-long/2addr p0, v7

    goto :goto_0

    .line 114
    :cond_1
    :goto_1
    cmp-long v1, p0, v4

    if-lez v1, :cond_2

    .line 115
    shl-long/2addr p0, v6

    goto :goto_1

    .line 118
    :cond_2
    const/4 v0, 0x0

    .line 119
    .local v0, "n":I
    :goto_2
    const-wide v2, 0xffffffffffffffL

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 120
    shl-long/2addr p0, v7

    .line 121
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 123
    :cond_3
    :goto_3
    cmp-long v1, p0, v4

    if-eqz v1, :cond_4

    .line 124
    shl-long/2addr p0, v6

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 127
    :cond_4
    return v0
.end method

.method private developLongDigits(IJJ)V
    .locals 16
    .param p1, "decExponent"    # I
    .param p2, "lvalue"    # J
    .param p4, "insignificant"    # J

    .prologue
    .line 319
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-wide/16 v14, 0xa

    cmp-long v14, p4, v14

    if-ltz v14, :cond_0

    .line 320
    const-wide/16 v14, 0xa

    div-long p4, p4, v14

    .line 319
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    :cond_0
    if-eqz v6, :cond_1

    .line 322
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v14, v14, v6

    shl-long v10, v14, v6

    .line 323
    .local v10, "pow10":J
    rem-long v12, p2, v10

    .line 324
    .local v12, "residue":J
    div-long p2, p2, v10

    .line 325
    add-int p1, p1, v6

    .line 326
    const/4 v14, 0x1

    shr-long v14, v10, v14

    cmp-long v14, v12, v14

    if-ltz v14, :cond_1

    .line 328
    const-wide/16 v14, 0x1

    add-long p2, p2, v14

    .line 331
    .end local v10    # "pow10":J
    .end local v12    # "residue":J
    :cond_1
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, p2, v14

    if-gtz v14, :cond_6

    .line 332
    sget-boolean v14, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v14, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_3

    new-instance v14, Ljava/lang/AssertionError;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 335
    :cond_3
    move-wide/from16 v0, p2

    long-to-int v7, v0

    .line 336
    .local v7, "ivalue":I
    const/16 v8, 0xa

    .line 337
    .local v8, "ndigits":I
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 338
    .local v5, "digits":[C
    const/16 v3, 0x9

    .line 339
    .local v3, "digitno":I
    rem-int/lit8 v2, v7, 0xa

    .line 340
    .local v2, "c":I
    div-int/lit8 v7, v7, 0xa

    .line 341
    :goto_2
    if-nez v2, :cond_4

    .line 342
    add-int/lit8 p1, p1, 0x1

    .line 343
    rem-int/lit8 v2, v7, 0xa

    .line 344
    div-int/lit8 v7, v7, 0xa

    goto :goto_2

    .line 346
    .end local v3    # "digitno":I
    .local v4, "digitno":I
    :goto_3
    if-eqz v7, :cond_5

    .line 347
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    .line 348
    add-int/lit8 p1, p1, 0x1

    .line 349
    rem-int/lit8 v2, v7, 0xa

    .line 350
    div-int/lit8 v7, v7, 0xa

    :cond_4
    move v4, v3

    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_3

    .line 352
    :cond_5
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    move v3, v4

    .line 375
    .end local v4    # "digitno":I
    .end local v7    # "ivalue":I
    .restart local v3    # "digitno":I
    :goto_4
    sub-int/2addr v8, v3

    .line 376
    new-array v9, v8, [C

    .line 377
    .local v9, "result":[C
    const/4 v14, 0x0

    invoke-static {v5, v3, v9, v14, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 378
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 379
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 380
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 310
    return-void

    .line 356
    .end local v2    # "c":I
    .end local v3    # "digitno":I
    .end local v5    # "digits":[C
    .end local v8    # "ndigits":I
    .end local v9    # "result":[C
    :cond_6
    const/16 v8, 0x14

    .line 357
    .restart local v8    # "ndigits":I
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 358
    .restart local v5    # "digits":[C
    const/16 v3, 0x13

    .line 359
    .restart local v3    # "digitno":I
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 360
    .restart local v2    # "c":I
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    .line 361
    :goto_5
    if-nez v2, :cond_7

    .line 362
    add-int/lit8 p1, p1, 0x1

    .line 363
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 364
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    goto :goto_5

    .line 366
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    :goto_6
    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-eqz v14, :cond_8

    .line 367
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    .line 368
    add-int/lit8 p1, p1, 0x1

    .line 369
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 370
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    :cond_7
    move v4, v3

    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_6

    .line 372
    :cond_8
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    move v3, v4

    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    goto :goto_4
.end method

.method private doubleToBigInt(D)Lsun/misc/FDBigInt;
    .locals 11
    .param p1, "dval"    # D

    .prologue
    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v6, v8

    .line 218
    .local v2, "lbits":J
    const/16 v5, 0x34

    ushr-long v6, v2, v5

    long-to-int v0, v6

    .line 219
    .local v0, "binexp":I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v2, v6

    .line 220
    if-lez v0, :cond_1

    .line 221
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v2, v6

    .line 230
    :cond_0
    add-int/lit16 v0, v0, -0x3ff

    .line 231
    invoke-static {v2, v3}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    move-result v4

    .line 236
    .local v4, "nbits":I
    rsub-int/lit8 v1, v4, 0x35

    .line 237
    .local v1, "lowOrderZeros":I
    ushr-long/2addr v2, v1

    .line 239
    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v4

    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    .line 240
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    .line 241
    new-instance v5, Lsun/misc/FDBigInt;

    invoke-direct {v5, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V

    return-object v5

    .line 223
    .end local v1    # "lowOrderZeros":I
    .end local v4    # "nbits":I
    :cond_1
    sget-boolean v5, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 225
    :goto_1
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 226
    const/4 v5, 0x1

    shl-long/2addr v2, v5

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private dtoa(IJI)V
    .locals 50
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I

    .prologue
    .line 609
    invoke-static/range {p2 .. p3}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    move-result v31

    .line 610
    .local v31, "nFractBits":I
    sub-int v2, v31, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 611
    .local v34, "nTinyBits":I
    const/16 v2, 0x3e

    move/from16 v0, p1

    if-gt v0, v2, :cond_2

    const/16 v2, -0x15

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    .line 615
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    array-length v2, v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_2

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    aget v2, v2, v34

    add-int v2, v2, v31

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 632
    if-nez v34, :cond_2

    .line 633
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_0

    .line 634
    sub-int v2, p1, p4

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, 0x1

    shl-long v6, v4, v2

    .line 638
    .local v6, "halfULP":J
    :goto_0
    const/16 v2, 0x34

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    .line 639
    add-int/lit8 v2, p1, -0x34

    shl-long p2, p2, v2

    .line 643
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lsun/misc/FormattedFloatingDecimal;->developLongDigits(IJJ)V

    .line 644
    return-void

    .line 636
    .end local v6    # "halfULP":J
    :cond_0
    const-wide/16 v6, 0x0

    .restart local v6    # "halfULP":J
    goto :goto_0

    .line 641
    :cond_1
    rsub-int/lit8 v2, p1, 0x34

    ushr-long p2, p2, v2

    goto :goto_1

    .line 696
    .end local v6    # "halfULP":J
    :cond_2
    const-wide v2, -0x10000000000001L

    and-long v2, v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    or-long/2addr v2, v4

    .line 695
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    .line 698
    .local v22, "d2":D
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-double v2, v22, v2

    const-wide v4, 0x3fd287a762c9bd93L    # 0.289529654

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc68a288b421b8cL    # 0.176091259

    add-double/2addr v2, v4

    move/from16 v0, p1

    int-to-double v4, v0

    const-wide v48, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double v4, v4, v48

    add-double/2addr v2, v4

    .line 697
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v24, v0

    .line 706
    .local v24, "decExp":I
    move/from16 v0, v24

    neg-int v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 707
    .local v9, "B5":I
    add-int v2, v9, v34

    add-int v8, v2, p1

    .line 709
    .local v8, "B2":I
    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 710
    .local v16, "S5":I
    add-int v15, v16, v34

    .line 712
    .local v15, "S2":I
    move v13, v9

    .line 713
    .local v13, "M5":I
    sub-int v12, v8, p4

    .line 723
    .local v12, "M2":I
    rsub-int/lit8 v2, v31, 0x35

    ushr-long p2, p2, v2

    .line 724
    add-int/lit8 v2, v31, -0x1

    sub-int/2addr v8, v2

    .line 725
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 726
    .local v19, "common2factor":I
    sub-int v8, v8, v19

    .line 727
    sub-int v15, v15, v19

    .line 728
    sub-int v12, v12, v19

    .line 736
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_3

    .line 737
    add-int/lit8 v12, v12, -0x1

    .line 739
    :cond_3
    if-gez v12, :cond_4

    .line 743
    sub-int/2addr v8, v12

    .line 744
    sub-int/2addr v15, v12

    .line 745
    const/4 v12, 0x0

    .line 755
    :cond_4
    const/16 v2, 0x12

    new-array v0, v2, [C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 756
    .local v25, "digits":[C
    const/16 v35, 0x0

    .line 776
    .local v35, "ndigit":I
    add-int v3, v31, v8

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    array-length v2, v2

    if-ge v9, v2, :cond_5

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    aget v2, v2, v9

    :goto_2
    add-int v10, v3, v2

    .line 777
    .local v10, "Bbits":I
    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v2, v16, 0x1

    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    array-length v4, v4

    if-ge v2, v4, :cond_6

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    add-int/lit8 v4, v16, 0x1

    aget v2, v2, v4

    :goto_3
    add-int v42, v3, v2

    .line 778
    .local v42, "tenSbits":I
    const/16 v2, 0x40

    if-ge v10, v2, :cond_27

    const/16 v2, 0x40

    move/from16 v0, v42

    if-ge v0, v2, :cond_27

    .line 779
    const/16 v2, 0x20

    if-ge v10, v2, :cond_17

    const/16 v2, 0x20

    move/from16 v0, v42

    if-ge v0, v2, :cond_17

    .line 781
    move-wide/from16 v0, p2

    long-to-int v2, v0

    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v3, v3, v9

    mul-int/2addr v2, v3

    shl-int v18, v2, v8

    .line 782
    .local v18, "b":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v2, v2, v16

    shl-int v38, v2, v15

    .line 783
    .local v38, "s":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v2, v2, v9

    shl-int v30, v2, v12

    .line 784
    .local v30, "m":I
    mul-int/lit8 v44, v38, 0xa

    .line 790
    .local v44, "tens":I
    const/16 v35, 0x0

    .line 791
    div-int v37, v18, v38

    .line 792
    .local v37, "q":I
    rem-int v2, v18, v38

    mul-int/lit8 v18, v2, 0xa

    .line 793
    mul-int/lit8 v30, v30, 0xa

    .line 794
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    const/16 v27, 0x1

    .line 795
    .local v27, "low":Z
    :goto_4
    add-int v2, v18, v30

    move/from16 v0, v44

    if-le v2, v0, :cond_8

    const/16 v26, 0x1

    .line 796
    .local v26, "high":Z
    :goto_5
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_a

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 776
    .end local v10    # "Bbits":I
    .end local v18    # "b":I
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v30    # "m":I
    .end local v37    # "q":I
    .end local v38    # "s":I
    .end local v42    # "tenSbits":I
    .end local v44    # "tens":I
    :cond_5
    mul-int/lit8 v2, v9, 0x3

    goto :goto_2

    .line 777
    .restart local v10    # "Bbits":I
    :cond_6
    add-int/lit8 v2, v16, 0x1

    mul-int/lit8 v2, v2, 0x3

    goto :goto_3

    .line 794
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v37    # "q":I
    .restart local v38    # "s":I
    .restart local v42    # "tenSbits":I
    .restart local v44    # "tens":I
    :cond_7
    const/16 v27, 0x0

    .restart local v27    # "low":Z
    goto :goto_4

    .line 795
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_5

    .line 796
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 797
    :cond_a
    if-nez v37, :cond_b

    if-eqz v26, :cond_f

    .line 790
    :cond_b
    const/4 v2, 0x0

    .line 801
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 809
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v2, v3, :cond_c

    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v2, v0, :cond_10

    .line 810
    :cond_c
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 812
    .end local v35    # "ndigit":I
    .local v36, "ndigit":I
    :goto_8
    if-nez v27, :cond_d

    if-eqz v26, :cond_11

    .line 831
    :cond_d
    shl-int/lit8 v2, v18, 0x1

    sub-int v2, v2, v44

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .local v28, "lowDigitDifference":J
    move/from16 v35, v36

    .line 943
    .end local v18    # "b":I
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :goto_9
    add-int/lit8 v2, v24, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 944
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 945
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 949
    if-eqz v26, :cond_e

    .line 950
    if-eqz v27, :cond_38

    .line 951
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-nez v2, :cond_37

    .line 954
    move-object/from16 v0, p0

    iget v2, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v25, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    .line 600
    :cond_e
    :goto_a
    return-void

    .line 799
    .end local v28    # "lowDigitDifference":J
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v38    # "s":I
    .restart local v44    # "tens":I
    :cond_f
    add-int/lit8 v24, v24, -0x1

    .line 797
    goto :goto_7

    .line 809
    :cond_10
    const/16 v2, 0x8

    move/from16 v0, v24

    if-ge v0, v2, :cond_c

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_8

    .line 813
    :cond_11
    div-int v37, v18, v38

    .line 814
    rem-int v2, v18, v38

    mul-int/lit8 v18, v2, 0xa

    .line 815
    mul-int/lit8 v30, v30, 0xa

    .line 816
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_13

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_12

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_b

    .line 817
    :cond_13
    move/from16 v0, v30

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 818
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    const/16 v27, 0x1

    .line 819
    :goto_c
    add-int v2, v18, v30

    move/from16 v0, v44

    if-le v2, v0, :cond_15

    const/16 v26, 0x1

    .line 829
    :goto_d
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    int-to-char v2, v2

    aput-char v2, v25, v36

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto/16 :goto_8

    .line 818
    :cond_14
    const/16 v27, 0x0

    goto :goto_c

    .line 819
    :cond_15
    const/16 v26, 0x0

    goto :goto_d

    .line 826
    :cond_16
    const/16 v27, 0x1

    .line 827
    const/16 v26, 0x1

    goto :goto_d

    .line 834
    .end local v18    # "b":I
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v37    # "q":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :cond_17
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v9

    mul-long v2, v2, p2

    shl-long v20, v2, v8

    .line 835
    .local v20, "b":J
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v16

    shl-long v40, v2, v15

    .line 836
    .local v40, "s":J
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v9

    shl-long v32, v2, v12

    .line 837
    .local v32, "m":J
    const-wide/16 v2, 0xa

    mul-long v46, v40, v2

    .line 843
    .local v46, "tens":J
    const/16 v35, 0x0

    .line 844
    div-long v2, v20, v40

    long-to-int v0, v2

    move/from16 v37, v0

    .line 845
    .restart local v37    # "q":I
    rem-long v2, v20, v40

    const-wide/16 v4, 0xa

    mul-long v20, v4, v2

    .line 846
    const-wide/16 v2, 0xa

    mul-long v32, v32, v2

    .line 847
    cmp-long v2, v20, v32

    if-gez v2, :cond_18

    const/16 v27, 0x1

    .line 848
    .restart local v27    # "low":Z
    :goto_e
    add-long v2, v20, v32

    cmp-long v2, v2, v46

    if-lez v2, :cond_19

    const/16 v26, 0x1

    .line 849
    .restart local v26    # "high":Z
    :goto_f
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_1a

    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 847
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "low":Z
    goto :goto_e

    .line 848
    :cond_19
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_f

    .line 849
    :cond_1a
    const/4 v2, 0x0

    goto :goto_10

    .line 850
    :cond_1b
    if-nez v37, :cond_1c

    if-eqz v26, :cond_1f

    .line 843
    :cond_1c
    const/4 v2, 0x0

    .line 854
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 862
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v2, v3, :cond_1d

    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v2, v0, :cond_20

    .line 863
    :cond_1d
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 865
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_12
    if-nez v27, :cond_1e

    if-eqz v26, :cond_21

    .line 884
    :cond_1e
    const/4 v2, 0x1

    shl-long v2, v20, v2

    sub-long v28, v2, v46

    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    .line 852
    .end local v28    # "lowDigitDifference":J
    :cond_1f
    add-int/lit8 v24, v24, -0x1

    .line 850
    goto :goto_11

    .line 862
    :cond_20
    const/16 v2, 0x8

    move/from16 v0, v24

    if-ge v0, v2, :cond_1d

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    .line 866
    :cond_21
    div-long v2, v20, v40

    long-to-int v0, v2

    move/from16 v37, v0

    .line 867
    rem-long v2, v20, v40

    const-wide/16 v4, 0xa

    mul-long v20, v4, v2

    .line 868
    const-wide/16 v2, 0xa

    mul-long v32, v32, v2

    .line 869
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_23

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_22

    const/4 v2, 0x1

    :goto_13
    if-nez v2, :cond_23

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_13

    .line 870
    :cond_23
    const-wide/16 v2, 0x0

    cmp-long v2, v32, v2

    if-lez v2, :cond_26

    .line 871
    cmp-long v2, v20, v32

    if-gez v2, :cond_24

    const/16 v27, 0x1

    .line 872
    :goto_14
    add-long v2, v20, v32

    cmp-long v2, v2, v46

    if-lez v2, :cond_25

    const/16 v26, 0x1

    .line 882
    :goto_15
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    int-to-char v2, v2

    aput-char v2, v25, v36

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    .line 871
    :cond_24
    const/16 v27, 0x0

    goto :goto_14

    .line 872
    :cond_25
    const/16 v26, 0x0

    goto :goto_15

    .line 879
    :cond_26
    const/16 v27, 0x1

    .line 880
    const/16 v26, 0x1

    goto :goto_15

    .line 894
    .end local v20    # "b":J
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v32    # "m":J
    .end local v36    # "ndigit":I
    .end local v37    # "q":I
    .end local v40    # "s":J
    .end local v46    # "tens":J
    .restart local v35    # "ndigit":I
    :cond_27
    new-instance v2, Lsun/misc/FDBigInt;

    move-wide/from16 v0, p2

    invoke-direct {v2, v0, v1}, Lsun/misc/FDBigInt;-><init>(J)V

    invoke-static {v2, v9, v8}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v11

    .line 895
    .local v11, "Bval":Lsun/misc/FDBigInt;
    move/from16 v0, v16

    invoke-static {v0, v15}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v17

    .line 896
    .local v17, "Sval":Lsun/misc/FDBigInt;
    invoke-static {v9, v12}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 900
    .local v14, "Mval":Lsun/misc/FDBigInt;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FDBigInt;->normalizeMe()I

    move-result v39

    .local v39, "shiftBias":I
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 901
    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 902
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v43

    .line 908
    .local v43, "tenSval":Lsun/misc/FDBigInt;
    const/16 v35, 0x0

    .line 909
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v37

    .line 910
    .restart local v37    # "q":I
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 911
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_28

    const/16 v27, 0x1

    .line 912
    .restart local v27    # "low":Z
    :goto_16
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-lez v2, :cond_29

    const/16 v26, 0x1

    .line 913
    .restart local v26    # "high":Z
    :goto_17
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_2b

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_2a

    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 911
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_28
    const/16 v27, 0x0

    .restart local v27    # "low":Z
    goto :goto_16

    .line 912
    :cond_29
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_17

    .line 913
    :cond_2a
    const/4 v2, 0x0

    goto :goto_18

    .line 914
    :cond_2b
    if-nez v37, :cond_2c

    if-eqz v26, :cond_2f

    .line 908
    :cond_2c
    const/4 v2, 0x0

    .line 918
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 926
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v2, v3, :cond_2d

    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v2, v0, :cond_30

    .line 927
    :cond_2d
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 929
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_1a
    if-nez v27, :cond_2e

    if-eqz v26, :cond_31

    .line 937
    :cond_2e
    if-eqz v26, :cond_36

    if-eqz v27, :cond_36

    .line 938
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 939
    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    .line 916
    .end local v28    # "lowDigitDifference":J
    :cond_2f
    add-int/lit8 v24, v24, -0x1

    .line 914
    goto :goto_19

    .line 926
    :cond_30
    const/16 v2, 0x8

    move/from16 v0, v24

    if-ge v0, v2, :cond_2d

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    .line 930
    :cond_31
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v37

    .line 931
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 932
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v2, :cond_33

    const/16 v2, 0xa

    move/from16 v0, v37

    if-ge v0, v2, :cond_32

    const/4 v2, 0x1

    :goto_1b
    if-nez v2, :cond_33

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_1b

    .line 933
    :cond_33
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_34

    const/16 v27, 0x1

    .line 934
    :goto_1c
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-lez v2, :cond_35

    const/16 v26, 0x1

    .line 935
    :goto_1d
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    int-to-char v2, v2

    aput-char v2, v25, v36

    move/from16 v36, v35

    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    .line 933
    :cond_34
    const/16 v27, 0x0

    goto :goto_1c

    .line 934
    :cond_35
    const/16 v26, 0x0

    goto :goto_1d

    .line 941
    :cond_36
    const-wide/16 v28, 0x0

    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    .line 955
    .end local v11    # "Bval":Lsun/misc/FDBigInt;
    .end local v14    # "Mval":Lsun/misc/FDBigInt;
    .end local v17    # "Sval":Lsun/misc/FDBigInt;
    .end local v39    # "shiftBias":I
    .end local v43    # "tenSval":Lsun/misc/FDBigInt;
    :cond_37
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-lez v2, :cond_e

    .line 956
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    goto/16 :goto_a

    .line 959
    :cond_38
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    goto/16 :goto_a
.end method

.method private static multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;
    .locals 1
    .param p0, "v"    # Lsun/misc/FDBigInt;
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 182
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object p0

    .line 187
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 190
    :cond_1
    return-object p0

    .line 184
    :cond_2
    invoke-static {p1}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object p0

    goto :goto_0
.end method

.method private roundup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x39

    .line 393
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    aget-char v1, v2, v0

    .line 394
    .local v1, "q":I
    if-ne v1, v4, :cond_1

    .line 395
    :goto_0
    if-ne v1, v4, :cond_0

    if-lez v0, :cond_0

    .line 396
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/16 v3, 0x30

    aput-char v3, v2, v0

    .line 397
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v2, v0

    goto :goto_0

    .line 399
    :cond_0
    if-ne v1, v4, :cond_1

    .line 401
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 402
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/16 v3, 0x31

    aput-char v3, v2, v5

    .line 403
    return-void

    .line 407
    :cond_1
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v3, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 391
    return-void
.end method

.method private static ulp(DZ)D
    .locals 12
    .param p0, "dval"    # D
    .param p2, "subtracting"    # Z

    .prologue
    const/16 v10, 0x34

    .line 251
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v6, v8

    .line 252
    .local v2, "lbits":J
    ushr-long v6, v2, v10

    long-to-int v0, v6

    .line 254
    .local v0, "binexp":I
    if-eqz p2, :cond_0

    if-lt v0, v10, :cond_0

    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 257
    add-int/lit8 v0, v0, -0x1

    .line 259
    :cond_0
    if-le v0, v10, :cond_2

    .line 260
    add-int/lit8 v1, v0, -0x34

    int-to-long v6, v1

    shl-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 266
    .local v4, "ulpval":D
    :goto_0
    if-eqz p2, :cond_1

    neg-double v4, v4

    .line 268
    :cond_1
    return-wide v4

    .line 261
    .end local v4    # "ulpval":D
    :cond_2
    if-nez v0, :cond_3

    .line 262
    const-wide/16 v4, 0x1

    .restart local v4    # "ulpval":D
    goto :goto_0

    .line 264
    .end local v4    # "ulpval":D
    :cond_3
    add-int/lit8 v1, v0, -0x1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .restart local v4    # "ulpval":D
    goto :goto_0
.end method


# virtual methods
.method public strictfp doubleValue()D
    .locals 42

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v10, 0x10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1166
    .local v9, "kDigits":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    if-eq v8, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v8, v10, :cond_3

    .line 1167
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v8, v10, :cond_1

    .line 1168
    const-wide/high16 v38, 0x7ff8000000000000L    # NaN

    return-wide v38

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_2

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v38

    :cond_2
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1173
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_4

    .line 1174
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1180
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/4 v10, 0x0

    aget-char v8, v8, v10

    add-int/lit8 v27, v8, -0x30

    .line 1181
    .local v27, "iValue":I
    const/16 v8, 0x9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 1182
    .local v26, "iDigits":I
    const/16 v25, 0x1

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1183
    mul-int/lit8 v8, v27, 0xa

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v10, v10, v25

    add-int/2addr v8, v10

    add-int/lit8 v27, v8, -0x30

    .line 1182
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1185
    :cond_5
    move/from16 v0, v27

    int-to-long v6, v0

    .line 1186
    .local v6, "lValue":J
    move/from16 v25, v26

    :goto_2
    move/from16 v0, v25

    if-ge v0, v9, :cond_6

    .line 1187
    const-wide/16 v38, 0xa

    mul-long v38, v38, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v8, v8, v25

    add-int/lit8 v8, v8, -0x30

    int-to-long v0, v8

    move-wide/from16 v40, v0

    add-long v6, v38, v40

    .line 1186
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1189
    :cond_6
    long-to-double v0, v6

    move-wide/from16 v20, v0

    .line 1190
    .local v20, "dValue":D
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    sub-int v22, v8, v9

    .line 1197
    .local v22, "exp":I
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v10, 0xf

    if-gt v8, v10, :cond_18

    .line 1208
    if-eqz v22, :cond_7

    const-wide/16 v38, 0x0

    cmpl-double v8, v20, v38

    if-nez v8, :cond_9

    .line 1209
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_8

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .end local v20    # "dValue":D
    :cond_8
    return-wide v20

    .line 1210
    .restart local v20    # "dValue":D
    :cond_9
    if-ltz v22, :cond_13

    .line 1211
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    move/from16 v0, v22

    if-gt v0, v8, :cond_e

    .line 1216
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v22

    mul-double v30, v20, v38

    .line 1217
    .local v30, "rValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_a

    .line 1218
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v22

    div-double v36, v30, v38

    .line 1219
    .local v36, "tValue":D
    cmpl-double v8, v36, v20

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1223
    .end local v36    # "tValue":D
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_b

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_b
    return-wide v30

    .line 1220
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_c
    cmpg-double v8, v36, v20

    if-gez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_3

    .line 1221
    :cond_d
    const/4 v8, -0x1

    goto :goto_3

    .line 1225
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_e
    rsub-int/lit8 v32, v9, 0xf

    .line 1226
    .local v32, "slop":I
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    add-int v8, v8, v32

    move/from16 v0, v22

    if-gt v0, v8, :cond_18

    .line 1233
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v32

    mul-double v20, v20, v38

    .line 1234
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    sub-int v10, v22, v32

    aget-wide v38, v8, v10

    mul-double v30, v20, v38

    .line 1236
    .restart local v30    # "rValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_f

    .line 1237
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    sub-int v10, v22, v32

    aget-wide v38, v8, v10

    div-double v36, v30, v38

    .line 1238
    .restart local v36    # "tValue":D
    cmpl-double v8, v36, v20

    if-nez v8, :cond_11

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1242
    .end local v36    # "tValue":D
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_10

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_10
    return-wide v30

    .line 1239
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_11
    cmpg-double v8, v36, v20

    if-gez v8, :cond_12

    const/4 v8, 0x1

    goto :goto_4

    .line 1240
    :cond_12
    const/4 v8, -0x1

    goto :goto_4

    .line 1248
    .end local v30    # "rValue":D
    .end local v32    # "slop":I
    .end local v36    # "tValue":D
    :cond_13
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    neg-int v8, v8

    move/from16 v0, v22

    if-lt v0, v8, :cond_18

    .line 1252
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    move/from16 v0, v22

    neg-int v10, v0

    aget-wide v38, v8, v10

    div-double v30, v20, v38

    .line 1253
    .restart local v30    # "rValue":D
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    move/from16 v0, v22

    neg-int v10, v0

    aget-wide v38, v8, v10

    mul-double v36, v30, v38

    .line 1254
    .restart local v36    # "tValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_14

    .line 1255
    cmpl-double v8, v36, v20

    if-nez v8, :cond_16

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1259
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_15

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_15
    return-wide v30

    .line 1256
    .restart local v30    # "rValue":D
    :cond_16
    cmpg-double v8, v36, v20

    if-gez v8, :cond_17

    const/4 v8, 0x1

    goto :goto_5

    .line 1257
    :cond_17
    const/4 v8, -0x1

    goto :goto_5

    .line 1275
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_18
    if-lez v22, :cond_26

    .line 1276
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v10, 0x135

    if-le v8, v10, :cond_1a

    .line 1281
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_19

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_6
    return-wide v38

    :cond_19
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_6

    .line 1283
    :cond_1a
    and-int/lit8 v8, v22, 0xf

    if-eqz v8, :cond_1b

    .line 1284
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    and-int/lit8 v10, v22, 0xf

    aget-wide v38, v8, v10

    mul-double v20, v20, v38

    .line 1286
    :cond_1b
    shr-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_21

    .line 1288
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_7
    const/4 v8, 0x1

    move/from16 v0, v22

    if-le v0, v8, :cond_1d

    .line 1289
    and-int/lit8 v8, v22, 0x1

    if-eqz v8, :cond_1c

    .line 1290
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v20, v20, v38

    .line 1288
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    shr-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1298
    :cond_1d
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v20, v38

    .line 1299
    .local v34, "t":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1312
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v34, v20, v38

    .line 1313
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v34, v38

    .line 1314
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1315
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_1e

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_8
    return-wide v38

    :cond_1e
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_8

    .line 1317
    :cond_1f
    const-wide v34, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1319
    :cond_20
    move-wide/from16 v20, v34

    .line 1377
    .end local v28    # "j":I
    .end local v34    # "t":D
    :cond_21
    :goto_9
    new-instance v5, Lsun/misc/FDBigInt;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    move-object/from16 v0, p0

    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-direct/range {v5 .. v10}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    .line 1378
    .local v5, "bigD0":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    move-object/from16 v0, p0

    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int v22, v8, v10

    .line 1385
    :cond_22
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    move-result-object v15

    .line 1399
    .local v15, "bigB":Lsun/misc/FDBigInt;
    if-ltz v22, :cond_2f

    .line 1400
    const/4 v11, 0x0

    .local v11, "B5":I
    const/4 v4, 0x0

    .line 1401
    .local v4, "B2":I
    move/from16 v13, v22

    .local v13, "D5":I
    move/from16 v12, v22

    .line 1406
    .local v12, "D2":I
    :goto_a
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    if-ltz v8, :cond_30

    .line 1407
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    add-int/2addr v4, v8

    .line 1411
    :goto_b
    move v14, v4

    .line 1415
    .local v14, "Ulp2":I
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    move-object/from16 v0, p0

    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    add-int/2addr v8, v10

    const/16 v10, -0x3fe

    if-gt v8, v10, :cond_31

    .line 1419
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    add-int/lit16 v8, v8, 0x3ff

    add-int/lit8 v24, v8, 0x34

    .line 1423
    .local v24, "hulpbias":I
    :goto_c
    add-int v4, v4, v24

    .line 1424
    add-int v12, v12, v24

    .line 1427
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1428
    .local v18, "common2":I
    sub-int v4, v4, v18

    .line 1429
    sub-int v12, v12, v18

    .line 1430
    sub-int v14, v14, v18

    .line 1432
    invoke-static {v15, v11, v4}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v15

    .line 1433
    new-instance v8, Lsun/misc/FDBigInt;

    invoke-direct {v8, v5}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    invoke-static {v8, v13, v12}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v16

    .line 1451
    .local v16, "bigD":Lsun/misc/FDBigInt;
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v17

    .local v17, "cmpResult":I
    if-lez v17, :cond_32

    .line 1452
    const/16 v29, 0x1

    .line 1453
    .local v29, "overvalue":Z
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v19

    .line 1454
    .local v19, "diff":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_23

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    const/16 v10, -0x3ff

    if-le v8, v10, :cond_23

    .line 1459
    add-int/lit8 v14, v14, -0x1

    .line 1460
    if-gez v14, :cond_23

    .line 1463
    const/4 v14, 0x0

    .line 1464
    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 1475
    :cond_23
    :goto_d
    invoke-static {v11, v14}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v23

    .line 1476
    .local v23, "halfUlp":Lsun/misc/FDBigInt;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v17

    if-gez v17, :cond_34

    .line 1479
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_24

    .line 1480
    if-eqz v29, :cond_33

    const/4 v8, -0x1

    :goto_e
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1504
    .end local v19    # "diff":Lsun/misc/FDBigInt;
    .end local v23    # "halfUlp":Lsun/misc/FDBigInt;
    .end local v29    # "overvalue":Z
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_25

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .end local v20    # "dValue":D
    :cond_25
    return-wide v20

    .line 1321
    .end local v4    # "B2":I
    .end local v5    # "bigD0":Lsun/misc/FDBigInt;
    .end local v11    # "B5":I
    .end local v12    # "D2":I
    .end local v13    # "D5":I
    .end local v14    # "Ulp2":I
    .end local v15    # "bigB":Lsun/misc/FDBigInt;
    .end local v16    # "bigD":Lsun/misc/FDBigInt;
    .end local v17    # "cmpResult":I
    .end local v18    # "common2":I
    .end local v24    # "hulpbias":I
    .restart local v20    # "dValue":D
    :cond_26
    if-gez v22, :cond_21

    .line 1322
    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    .line 1323
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v10, -0x145

    if-ge v8, v10, :cond_28

    .line 1328
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_27

    const-wide/high16 v38, -0x8000000000000000L

    :goto_10
    return-wide v38

    :cond_27
    const-wide/16 v38, 0x0

    goto :goto_10

    .line 1330
    :cond_28
    and-int/lit8 v8, v22, 0xf

    if-eqz v8, :cond_29

    .line 1331
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    and-int/lit8 v10, v22, 0xf

    aget-wide v38, v8, v10

    div-double v20, v20, v38

    .line 1333
    :cond_29
    shr-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_21

    .line 1335
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_11
    const/4 v8, 0x1

    move/from16 v0, v22

    if-le v0, v8, :cond_2b

    .line 1336
    and-int/lit8 v8, v22, 0x1

    if-eqz v8, :cond_2a

    .line 1337
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v20, v20, v38

    .line 1335
    :cond_2a
    add-int/lit8 v28, v28, 0x1

    shr-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 1345
    :cond_2b
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v20, v38

    .line 1346
    .restart local v34    # "t":D
    const-wide/16 v38, 0x0

    cmpl-double v8, v34, v38

    if-nez v8, :cond_2e

    .line 1359
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v34, v20, v38

    .line 1360
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v34, v38

    .line 1361
    const-wide/16 v38, 0x0

    cmpl-double v8, v34, v38

    if-nez v8, :cond_2d

    .line 1362
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_2c

    const-wide/high16 v38, -0x8000000000000000L

    :goto_12
    return-wide v38

    :cond_2c
    const-wide/16 v38, 0x0

    goto :goto_12

    .line 1364
    :cond_2d
    const-wide/16 v34, 0x1

    .line 1366
    :cond_2e
    move-wide/from16 v20, v34

    goto/16 :goto_9

    .line 1403
    .end local v28    # "j":I
    .end local v34    # "t":D
    .restart local v5    # "bigD0":Lsun/misc/FDBigInt;
    .restart local v15    # "bigB":Lsun/misc/FDBigInt;
    :cond_2f
    move/from16 v0, v22

    neg-int v11, v0

    .restart local v11    # "B5":I
    move v4, v11

    .line 1404
    .restart local v4    # "B2":I
    const/4 v13, 0x0

    .restart local v13    # "D5":I
    const/4 v12, 0x0

    .restart local v12    # "D2":I
    goto/16 :goto_a

    .line 1409
    :cond_30
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    sub-int/2addr v12, v8

    goto/16 :goto_b

    .line 1421
    .restart local v14    # "Ulp2":I
    :cond_31
    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    rsub-int/lit8 v24, v8, 0x36

    .restart local v24    # "hulpbias":I
    goto/16 :goto_c

    .line 1467
    .restart local v16    # "bigD":Lsun/misc/FDBigInt;
    .restart local v17    # "cmpResult":I
    .restart local v18    # "common2":I
    :cond_32
    if-gez v17, :cond_24

    .line 1468
    const/16 v29, 0x0

    .line 1469
    .restart local v29    # "overvalue":Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v19

    .restart local v19    # "diff":Lsun/misc/FDBigInt;
    goto/16 :goto_d

    .line 1480
    .restart local v23    # "halfUlp":Lsun/misc/FDBigInt;
    :cond_33
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 1483
    :cond_34
    if-nez v17, :cond_36

    .line 1486
    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    move-result-wide v38

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    mul-double v38, v38, v40

    add-double v20, v20, v38

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_24

    .line 1489
    if-eqz v29, :cond_35

    const/4 v8, -0x1

    :goto_13
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    goto/16 :goto_f

    :cond_35
    const/4 v8, 0x1

    goto :goto_13

    .line 1497
    :cond_36
    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    move-result-wide v38

    add-double v20, v20, v38

    .line 1498
    const-wide/16 v38, 0x0

    cmpl-double v8, v20, v38

    if-eqz v8, :cond_24

    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v20, v38

    if-nez v8, :cond_22

    goto/16 :goto_f
.end method

.method public strictfp floatValue()F
    .locals 14

    .prologue
    .line 1519
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v11, 0x8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1524
    .local v6, "kDigits":I
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v10, v11, :cond_3

    .line 1525
    :cond_0
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v10, v11, :cond_1

    .line 1526
    const/high16 v10, 0x7fc00000    # NaNf

    return v10

    .line 1528
    :cond_1
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_2

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    return v10

    :cond_2
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 1534
    :cond_3
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    add-int/lit8 v5, v10, -0x30

    .line 1535
    .local v5, "iValue":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1536
    mul-int/lit8 v10, v5, 0xa

    iget-object v11, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v11, v11, v4

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, -0x30

    .line 1535
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1538
    :cond_4
    int-to-float v3, v5

    .line 1539
    .local v3, "fValue":F
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    sub-int v2, v10, v6

    .line 1546
    .local v2, "exp":I
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/4 v11, 0x7

    if-gt v10, v11, :cond_d

    .line 1557
    if-eqz v2, :cond_5

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-nez v10, :cond_7

    .line 1558
    :cond_5
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_6

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_6
    return v3

    .line 1559
    .restart local v3    # "fValue":F
    :cond_7
    if-ltz v2, :cond_b

    .line 1560
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    if-gt v2, v10, :cond_9

    .line 1565
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    aget v10, v10, v2

    mul-float/2addr v3, v10

    .line 1566
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_8

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_8
    return v3

    .line 1568
    .restart local v3    # "fValue":F
    :cond_9
    rsub-int/lit8 v7, v6, 0x7

    .line 1569
    .local v7, "slop":I
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    add-int/2addr v10, v7

    if-gt v2, v10, :cond_10

    .line 1576
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    aget v10, v10, v7

    mul-float/2addr v3, v10

    .line 1577
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    sub-int v11, v2, v7

    aget v10, v10, v11

    mul-float/2addr v3, v10

    .line 1578
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_a

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_a
    return v3

    .line 1584
    .end local v7    # "slop":I
    .restart local v3    # "fValue":F
    :cond_b
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    neg-int v10, v10

    if-lt v2, v10, :cond_10

    .line 1588
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    neg-int v11, v2

    aget v10, v10, v11

    div-float/2addr v3, v10

    .line 1589
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_c

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_c
    return v3

    .line 1595
    .restart local v3    # "fValue":F
    :cond_d
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-lt v10, v11, :cond_10

    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    add-int/2addr v10, v11

    const/16 v11, 0xf

    if-gt v10, v11, :cond_10

    .line 1605
    int-to-long v8, v5

    .line 1606
    .local v8, "lValue":J
    move v4, v6

    :goto_2
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge v4, v10, :cond_e

    .line 1607
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    iget-object v12, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v12, v12, v4

    add-int/lit8 v12, v12, -0x30

    int-to-long v12, v12

    add-long v8, v10, v12

    .line 1606
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1609
    :cond_e
    long-to-double v0, v8

    .line 1610
    .local v0, "dValue":D
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int v2, v10, v11

    .line 1611
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v10, v10, v2

    mul-double/2addr v0, v10

    .line 1612
    double-to-float v3, v0

    .line 1613
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_f

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_f
    return v3

    .line 1625
    .end local v0    # "dValue":D
    .end local v8    # "lValue":J
    .restart local v3    # "fValue":F
    :cond_10
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v11, 0x27

    if-le v10, v11, :cond_12

    .line 1630
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_11

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_3
    return v10

    :cond_11
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_3

    .line 1631
    :cond_12
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v11, -0x2e

    if-ge v10, v11, :cond_14

    .line 1636
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_13

    const/high16 v10, -0x80000000

    :goto_4
    return v10

    :cond_13
    const/4 v10, 0x0

    goto :goto_4

    .line 1651
    :cond_14
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    :goto_5
    iput-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 1652
    invoke-virtual {p0}, Lsun/misc/FormattedFloatingDecimal;->doubleValue()D

    move-result-wide v0

    .line 1653
    .restart local v0    # "dValue":D
    invoke-virtual {p0, v0, v1}, Lsun/misc/FormattedFloatingDecimal;->stickyRound(D)F

    move-result v10

    return v10

    .line 1651
    .end local v0    # "dValue":D
    :cond_15
    const/4 v10, 0x1

    goto :goto_5
.end method

.method public getChars([C)I
    .locals 11
    .param p1, "result"    # [C

    .prologue
    .line 991
    sget-boolean v8, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v9, 0x13

    if-gt v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 992
    :cond_1
    const/4 v4, 0x0

    .line 993
    .local v4, "i":I
    iget-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_2

    const/16 v8, 0x2d

    const/4 v9, 0x0

    aput-char v8, p1, v9

    const/4 v4, 0x1

    .line 994
    :cond_2
    iget-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    if-eqz v8, :cond_4

    .line 995
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/4 v10, 0x0

    invoke-static {v8, v10, p1, v4, v9}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 996
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/2addr v4, v8

    .line 1140
    :cond_3
    :goto_1
    return v4

    .line 998
    :cond_4
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 999
    .local v1, "digits":[C
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 1000
    .local v3, "exp":I
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->-getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I

    move-result-object v8

    iget-object v9, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v9}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1025
    sget-boolean v8, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1004
    :pswitch_0
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v3

    .line 1005
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v1

    .line 1027
    :cond_5
    :goto_2
    :pswitch_1
    iput v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 1029
    if-lez v3, :cond_a

    .line 1030
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v8, v9, :cond_9

    const/16 v8, 0x8

    if-ge v3, v8, :cond_9

    .line 1034
    :cond_6
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1035
    .local v0, "charLength":I
    const/4 v8, 0x0

    invoke-static {v1, v8, p1, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1036
    add-int/2addr v4, v0

    .line 1037
    if-ge v0, v3, :cond_d

    .line 1038
    sub-int v0, v3, v0

    .line 1039
    const/4 v6, 0x0

    .local v6, "nz":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_3
    if-ge v6, v0, :cond_c

    .line 1040
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v5

    .line 1039
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 1008
    .end local v0    # "charLength":I
    .end local v5    # "i":I
    .end local v6    # "nz":I
    .restart local v4    # "i":I
    :pswitch_2
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v3

    .line 1009
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v1

    goto :goto_2

    .line 1012
    :pswitch_3
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v3

    .line 1013
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v1

    .line 1016
    add-int/lit8 v8, v3, -0x1

    const/4 v9, -0x4

    if-lt v8, v9, :cond_7

    add-int/lit8 v8, v3, -0x1

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    if-lt v8, v9, :cond_8

    .line 1017
    :cond_7
    sget-object v8, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 1018
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    goto :goto_2

    .line 1020
    :cond_8
    sget-object v8, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 1021
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    sub-int/2addr v8, v3

    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    goto :goto_2

    .line 1031
    :cond_9
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v8, v9, :cond_6

    .line 1070
    :cond_a
    if-gtz v3, :cond_11

    .line 1071
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v8, v9, :cond_10

    const/4 v8, -0x3

    if-le v3, v8, :cond_10

    .line 1075
    :cond_b
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v4

    .line 1076
    if-eqz v3, :cond_12

    .line 1078
    neg-int v8, v3

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1079
    .local v7, "t":I
    if-lez v7, :cond_12

    .line 1080
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v5

    .line 1081
    const/4 v6, 0x0

    .restart local v6    # "nz":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_4
    if-ge v6, v7, :cond_12

    .line 1082
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v5

    .line 1081
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 1044
    .end local v7    # "t":I
    .restart local v0    # "charLength":I
    :cond_c
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v8, v9, :cond_1c

    .line 1045
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v5

    .line 1046
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 1052
    .end local v6    # "nz":I
    :cond_d
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v8, v9, :cond_f

    .line 1053
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v4

    .line 1054
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge v0, v8, :cond_e

    .line 1055
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int/2addr v8, v0

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1056
    .restart local v7    # "t":I
    invoke-static {v1, v0, p1, v5, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1057
    add-int v4, v5, v7

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 1059
    .end local v4    # "i":I
    .end local v7    # "t":I
    .restart local v5    # "i":I
    :cond_e
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v5

    goto/16 :goto_1

    .line 1062
    :cond_f
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int/2addr v8, v0

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1063
    .restart local v7    # "t":I
    if-lez v7, :cond_3

    .line 1064
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v4

    .line 1065
    invoke-static {v1, v0, p1, v5, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1066
    add-int v4, v5, v7

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 1072
    .end local v0    # "charLength":I
    .end local v7    # "t":I
    :cond_10
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v8, v9, :cond_b

    .line 1094
    :cond_11
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/4 v8, 0x0

    aget-char v8, v1, v8

    aput-char v8, p1, v4

    .line 1095
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v8, v9, :cond_15

    .line 1096
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v5

    .line 1097
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_14

    .line 1098
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    invoke-static {v1, v9, p1, v4, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1099
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v4, v8

    .line 1103
    :goto_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x45

    aput-char v8, p1, v4

    .line 1116
    :goto_6
    if-gtz v3, :cond_16

    .line 1117
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2d

    aput-char v8, p1, v5

    .line 1118
    neg-int v8, v3

    add-int/lit8 v2, v8, 0x1

    .local v2, "e":I
    move v5, v4

    .line 1125
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_7
    const/16 v8, 0x9

    if-gt v2, v8, :cond_17

    .line 1126
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v8, v9, :cond_19

    .line 1127
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v5

    .line 1128
    :goto_8
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    add-int/lit8 v8, v2, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .end local v2    # "e":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_12
    move v4, v5

    .line 1085
    .end local v5    # "i":I
    .restart local v4    # "i":I
    array-length v8, v1

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1086
    .restart local v7    # "t":I
    if-lez v7, :cond_3

    .line 1087
    const/4 v8, 0x1

    if-ne v4, v8, :cond_13

    .line 1088
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v4

    move v4, v5

    .line 1090
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_13
    const/4 v8, 0x0

    invoke-static {v1, v8, p1, v4, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1091
    add-int/2addr v4, v7

    goto/16 :goto_1

    .line 1101
    .end local v7    # "t":I
    :cond_14
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    aput-char v8, p1, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 1105
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_15
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1b

    .line 1106
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1107
    .restart local v7    # "t":I
    if-lez v7, :cond_1b

    .line 1108
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    aput-char v8, p1, v5

    .line 1109
    const/4 v8, 0x1

    invoke-static {v1, v8, p1, v4, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1110
    add-int/2addr v4, v7

    .line 1113
    .end local v7    # "t":I
    :goto_9
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x65

    aput-char v8, p1, v4

    goto :goto_6

    .line 1120
    :cond_16
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v8, v9, :cond_1a

    .line 1121
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2b

    aput-char v8, p1, v5

    .line 1122
    :goto_a
    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "e":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_7

    .line 1129
    :cond_17
    const/16 v8, 0x63

    if-gt v2, v8, :cond_18

    .line 1130
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    div-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v5

    .line 1131
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    rem-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 1133
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_18
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    div-int/lit8 v8, v2, 0x64

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v5

    .line 1134
    rem-int/lit8 v2, v2, 0x64

    .line 1135
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    div-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v4

    .line 1136
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    rem-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p1, v5

    goto/16 :goto_1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_19
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_8

    .end local v2    # "e":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_1a
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_1b
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_9

    .end local v4    # "i":I
    .restart local v0    # "charLength":I
    .restart local v5    # "i":I
    .restart local v6    # "nz":I
    :cond_1c
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 1000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getExponent()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getExponentRounded()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method stickyRound(D)F
    .locals 9
    .param p1, "dval"    # D

    .prologue
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 282
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 283
    .local v2, "lbits":J
    and-long v0, v2, v6

    .line 284
    .local v0, "binexp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 287
    :cond_0
    double-to-float v4, p1

    return v4

    .line 289
    :cond_1
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 967
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 968
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 969
    :cond_0
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 977
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1

    .line 972
    :cond_1
    const-string/jumbo v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 973
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 974
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 975
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
