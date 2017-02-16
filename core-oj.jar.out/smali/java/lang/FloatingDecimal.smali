.class public Ljava/lang/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/FloatingDecimal$1;,
        Ljava/lang/FloatingDecimal$2;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TL_INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/FloatingDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private static b5p:[Lsun/misc/FDBigInt; = null

.field private static final big10pow:[D

.field static final bigDecimalExponent:I = 0x144

.field static final expBias:I = 0x3ff

.field static final expMask:J = 0x7ff0000000000000L

.field static final expOne:J = 0x3ff0000000000000L

.field static final expShift:I = 0x34

.field static final fractHOB:J = 0x10000000000000L

.field static final fractMask:J = 0xfffffffffffffL

.field private static hexFloatPattern:Ljava/util/regex/Pattern; = null

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

.field digits:[C

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field roundDir:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    const/16 v2, 0x8

    const/4 v1, 0x5

    const-class v0, Ljava/lang/FloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    .line 395
    new-instance v0, Ljava/lang/FloatingDecimal$1;

    invoke-direct {v0}, Ljava/lang/FloatingDecimal$1;-><init>()V

    sput-object v0, Ljava/lang/FloatingDecimal;->TL_INSTANCE:Ljava/lang/ThreadLocal;

    .line 994
    new-instance v0, Ljava/lang/FloatingDecimal$2;

    invoke-direct {v0}, Ljava/lang/FloatingDecimal$2;-><init>()V

    sput-object v0, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    .line 1821
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/FloatingDecimal;->small10pow:[D

    .line 1830
    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    .line 1836
    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Ljava/lang/FloatingDecimal;->big10pow:[D

    .line 1838
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    .line 1841
    sget-object v0, Ljava/lang/FloatingDecimal;->small10pow:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    .line 1842
    sget-object v0, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    .line 1844
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    .line 1862
    new-array v0, v3, [J

    fill-array-data v0, :array_5

    sput-object v0, Ljava/lang/FloatingDecimal;->long5pow:[J

    .line 1893
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Ljava/lang/FloatingDecimal;->n5bits:[I

    .line 1923
    new-array v0, v2, [C

    fill-array-data v0, :array_7

    sput-object v0, Ljava/lang/FloatingDecimal;->infinity:[C

    .line 1924
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Ljava/lang/FloatingDecimal;->notANumber:[C

    .line 1925
    new-array v0, v2, [C

    fill-array-data v0, :array_9

    sput-object v0, Ljava/lang/FloatingDecimal;->zero:[C

    .line 1932
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    .line 34
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1821
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

    .line 1830
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

    .line 1836
    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    .line 1838
    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data

    .line 1844
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

    .line 1862
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

    .line 1893
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

    .line 1923
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

    .line 1924
    :array_8
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    .line 1925
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

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    .line 43
    iput-boolean v0, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    .line 44
    iput v0, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/FloatingDecimal;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/FloatingDecimal;-><init>()V

    return-void
.end method

.method private static declared-synchronized big5pow(I)Lsun/misc/FDBigInt;
    .locals 10
    .param p0, "p"    # I

    .prologue
    const/4 v5, 0x0

    const-class v6, Ljava/lang/FloatingDecimal;

    monitor-enter v6

    .line 120
    :try_start_0
    sget-boolean v7, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 121
    :cond_1
    :try_start_1
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    if-nez v5, :cond_3

    .line 122
    add-int/lit8 v5, p0, 0x1

    new-array v5, v5, [Lsun/misc/FDBigInt;

    sput-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    .line 128
    :cond_2
    :goto_0
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v5, v5, p0

    if-eqz v5, :cond_4

    .line 129
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v5, v5, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v5

    .line 123
    :cond_3
    :try_start_2
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v5, v5

    if-gt v5, p0, :cond_2

    .line 124
    add-int/lit8 v5, p0, 0x1

    new-array v4, v5, [Lsun/misc/FDBigInt;

    .line 125
    .local v4, "t":[Lsun/misc/FDBigInt;
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    sput-object v4, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    goto :goto_0

    .line 130
    .end local v4    # "t":[Lsun/misc/FDBigInt;
    :cond_4
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    array-length v5, v5

    if-ge p0, v5, :cond_5

    .line 131
    new-instance v5, Lsun/misc/FDBigInt;

    sget-object v7, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v7, v7, p0

    invoke-direct {v5, v7}, Lsun/misc/FDBigInt;-><init>(I)V

    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 132
    :cond_5
    :try_start_3
    sget-object v5, Ljava/lang/FloatingDecimal;->long5pow:[J

    array-length v5, v5

    if-ge p0, v5, :cond_6

    .line 133
    new-instance v5, Lsun/misc/FDBigInt;

    sget-object v7, Ljava/lang/FloatingDecimal;->long5pow:[J

    aget-wide v8, v7, p0

    invoke-direct {v5, v8, v9}, Lsun/misc/FDBigInt;-><init>(J)V

    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v5

    .line 142
    :cond_6
    shr-int/lit8 v2, p0, 0x1

    .line 143
    .local v2, "q":I
    sub-int v3, p0, v2

    .line 144
    .local v3, "r":I
    :try_start_4
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v5, v2

    .line 145
    .local v0, "bigq":Lsun/misc/FDBigInt;
    if-nez v0, :cond_7

    .line 146
    invoke-static {v2}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 147
    :cond_7
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 148
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v5

    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-object v5

    .line 150
    :cond_8
    :try_start_5
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v1, v5, v3

    .line 151
    .local v1, "bigr":Lsun/misc/FDBigInt;
    if-nez v1, :cond_9

    .line 152
    invoke-static {v3}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    .line 153
    :cond_9
    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v5

    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aput-object v5, v7, p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    return-object v5
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .locals 2
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    .prologue
    .line 181
    new-instance v0, Lsun/misc/FDBigInt;

    invoke-static {p0}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    .line 182
    .local v0, "v":Lsun/misc/FDBigInt;
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 185
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

    .line 92
    cmp-long v1, p0, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 94
    :cond_0
    :goto_0
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 95
    shl-long/2addr p0, v7

    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    cmp-long v1, p0, v4

    if-lez v1, :cond_2

    .line 98
    shl-long/2addr p0, v6

    goto :goto_1

    .line 101
    :cond_2
    const/4 v0, 0x0

    .line 102
    .local v0, "n":I
    :goto_2
    const-wide v2, 0xffffffffffffffL

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 103
    shl-long/2addr p0, v7

    .line 104
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 106
    :cond_3
    :goto_3
    cmp-long v1, p0, v4

    if-eqz v1, :cond_4

    .line 107
    shl-long/2addr p0, v6

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :cond_4
    return v0
.end method

.method private developLongDigits(IJJ)V
    .locals 16
    .param p1, "decExponent"    # I
    .param p2, "lvalue"    # J
    .param p4, "insignificant"    # J

    .prologue
    .line 302
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-wide/16 v14, 0xa

    cmp-long v14, p4, v14

    if-ltz v14, :cond_0

    .line 303
    const-wide/16 v14, 0xa

    div-long p4, p4, v14

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    :cond_0
    if-eqz v6, :cond_1

    .line 305
    sget-object v14, Ljava/lang/FloatingDecimal;->long5pow:[J

    aget-wide v14, v14, v6

    shl-long v10, v14, v6

    .line 306
    .local v10, "pow10":J
    rem-long v12, p2, v10

    .line 307
    .local v12, "residue":J
    div-long p2, p2, v10

    .line 308
    add-int p1, p1, v6

    .line 309
    const/4 v14, 0x1

    shr-long v14, v10, v14

    cmp-long v14, v12, v14

    if-ltz v14, :cond_1

    .line 311
    const-wide/16 v14, 0x1

    add-long p2, p2, v14

    .line 314
    .end local v10    # "pow10":J
    .end local v12    # "residue":J
    :cond_1
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, p2, v14

    if-gtz v14, :cond_6

    .line 315
    sget-boolean v14, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 318
    :cond_3
    move-wide/from16 v0, p2

    long-to-int v7, v0

    .line 319
    .local v7, "ivalue":I
    const/16 v8, 0xa

    .line 320
    .local v8, "ndigits":I
    sget-object v14, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 321
    .local v5, "digits":[C
    const/16 v3, 0x9

    .line 322
    .local v3, "digitno":I
    rem-int/lit8 v2, v7, 0xa

    .line 323
    .local v2, "c":I
    div-int/lit8 v7, v7, 0xa

    .line 324
    :goto_2
    if-nez v2, :cond_4

    .line 325
    add-int/lit8 p1, p1, 0x1

    .line 326
    rem-int/lit8 v2, v7, 0xa

    .line 327
    div-int/lit8 v7, v7, 0xa

    goto :goto_2

    .line 329
    .end local v3    # "digitno":I
    .local v4, "digitno":I
    :goto_3
    if-eqz v7, :cond_5

    .line 330
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    .line 331
    add-int/lit8 p1, p1, 0x1

    .line 332
    rem-int/lit8 v2, v7, 0xa

    .line 333
    div-int/lit8 v7, v7, 0xa

    :cond_4
    move v4, v3

    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_3

    .line 335
    :cond_5
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    move v3, v4

    .line 358
    .end local v4    # "digitno":I
    .end local v7    # "ivalue":I
    .restart local v3    # "digitno":I
    :goto_4
    sub-int/2addr v8, v3

    .line 359
    new-array v9, v8, [C

    .line 360
    .local v9, "result":[C
    const/4 v14, 0x0

    invoke-static {v5, v3, v9, v14, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 361
    move-object/from16 v0, p0

    iput-object v9, v0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 362
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 363
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 293
    return-void

    .line 339
    .end local v2    # "c":I
    .end local v3    # "digitno":I
    .end local v5    # "digits":[C
    .end local v8    # "ndigits":I
    .end local v9    # "result":[C
    :cond_6
    const/16 v8, 0x14

    .line 340
    .restart local v8    # "ndigits":I
    sget-object v14, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 341
    .restart local v5    # "digits":[C
    const/16 v3, 0x13

    .line 342
    .restart local v3    # "digitno":I
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 343
    .restart local v2    # "c":I
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    .line 344
    :goto_5
    if-nez v2, :cond_7

    .line 345
    add-int/lit8 p1, p1, 0x1

    .line 346
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 347
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    goto :goto_5

    .line 349
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    :goto_6
    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-eqz v14, :cond_8

    .line 350
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    int-to-char v14, v14

    aput-char v14, v5, v4

    .line 351
    add-int/lit8 p1, p1, 0x1

    .line 352
    const-wide/16 v14, 0xa

    rem-long v14, p2, v14

    long-to-int v2, v14

    .line 353
    const-wide/16 v14, 0xa

    div-long p2, p2, v14

    :cond_7
    move v4, v3

    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_6

    .line 355
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
    .line 200
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v6, v8

    .line 201
    .local v2, "lbits":J
    const/16 v5, 0x34

    ushr-long v6, v2, v5

    long-to-int v0, v6

    .line 202
    .local v0, "binexp":I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v2, v6

    .line 203
    if-lez v0, :cond_1

    .line 204
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v2, v6

    .line 213
    :cond_0
    add-int/lit16 v0, v0, -0x3ff

    .line 214
    invoke-static {v2, v3}, Ljava/lang/FloatingDecimal;->countBits(J)I

    move-result v4

    .line 219
    .local v4, "nbits":I
    rsub-int/lit8 v1, v4, 0x35

    .line 220
    .local v1, "lowOrderZeros":I
    ushr-long/2addr v2, v1

    .line 222
    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    .line 223
    iput v4, p0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    .line 224
    new-instance v5, Lsun/misc/FDBigInt;

    invoke-direct {v5, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V

    return-object v5

    .line 206
    .end local v1    # "lowOrderZeros":I
    .end local v4    # "nbits":I
    :cond_1
    sget-boolean v5, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 207
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 208
    :goto_1
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 209
    const/4 v5, 0x1

    shl-long/2addr v2, v5

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private dtoa(IJI)V
    .locals 50
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I

    .prologue
    .line 542
    invoke-static/range {p2 .. p3}, Ljava/lang/FloatingDecimal;->countBits(J)I

    move-result v31

    .line 543
    .local v31, "nFractBits":I
    sub-int v2, v31, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 544
    .local v34, "nTinyBits":I
    const/16 v2, 0x3e

    move/from16 v0, p1

    if-gt v0, v2, :cond_2

    const/16 v2, -0x15

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    .line 548
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    array-length v2, v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_2

    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    aget v2, v2, v34

    add-int v2, v2, v31

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 565
    if-nez v34, :cond_2

    .line 566
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_0

    .line 567
    sub-int v2, p1, p4

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, 0x1

    shl-long v6, v4, v2

    .line 571
    .local v6, "halfULP":J
    :goto_0
    const/16 v2, 0x34

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    .line 572
    add-int/lit8 v2, p1, -0x34

    shl-long p2, p2, v2

    .line 576
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Ljava/lang/FloatingDecimal;->developLongDigits(IJJ)V

    .line 577
    return-void

    .line 569
    .end local v6    # "halfULP":J
    :cond_0
    const-wide/16 v6, 0x0

    .restart local v6    # "halfULP":J
    goto :goto_0

    .line 574
    :cond_1
    rsub-int/lit8 v2, p1, 0x34

    ushr-long p2, p2, v2

    goto :goto_1

    .line 629
    .end local v6    # "halfULP":J
    :cond_2
    const-wide v2, -0x10000000000001L

    and-long v2, v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    or-long/2addr v2, v4

    .line 628
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    .line 631
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

    .line 630
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v24, v0

    .line 639
    .local v24, "decExp":I
    move/from16 v0, v24

    neg-int v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 640
    .local v9, "B5":I
    add-int v2, v9, v34

    add-int v8, v2, p1

    .line 642
    .local v8, "B2":I
    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 643
    .local v16, "S5":I
    add-int v15, v16, v34

    .line 645
    .local v15, "S2":I
    move v13, v9

    .line 646
    .local v13, "M5":I
    sub-int v12, v8, p4

    .line 656
    .local v12, "M2":I
    rsub-int/lit8 v2, v31, 0x35

    ushr-long p2, p2, v2

    .line 657
    add-int/lit8 v2, v31, -0x1

    sub-int/2addr v8, v2

    .line 658
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 659
    .local v19, "common2factor":I
    sub-int v8, v8, v19

    .line 660
    sub-int v15, v15, v19

    .line 661
    sub-int v12, v12, v19

    .line 669
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_3

    .line 670
    add-int/lit8 v12, v12, -0x1

    .line 672
    :cond_3
    if-gez v12, :cond_4

    .line 676
    sub-int/2addr v8, v12

    .line 677
    sub-int/2addr v15, v12

    .line 678
    const/4 v12, 0x0

    .line 688
    :cond_4
    const/16 v2, 0x12

    new-array v0, v2, [C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/FloatingDecimal;->digits:[C

    .line 689
    .local v25, "digits":[C
    const/16 v35, 0x0

    .line 709
    .local v35, "ndigit":I
    add-int v3, v31, v8

    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    array-length v2, v2

    if-ge v9, v2, :cond_5

    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    aget v2, v2, v9

    :goto_2
    add-int v10, v3, v2

    .line 710
    .local v10, "Bbits":I
    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v2, v16, 0x1

    sget-object v4, Ljava/lang/FloatingDecimal;->n5bits:[I

    array-length v4, v4

    if-ge v2, v4, :cond_6

    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    add-int/lit8 v4, v16, 0x1

    aget v2, v2, v4

    :goto_3
    add-int v42, v3, v2

    .line 711
    .local v42, "tenSbits":I
    const/16 v2, 0x40

    if-ge v10, v2, :cond_27

    const/16 v2, 0x40

    move/from16 v0, v42

    if-ge v0, v2, :cond_27

    .line 712
    const/16 v2, 0x20

    if-ge v10, v2, :cond_17

    const/16 v2, 0x20

    move/from16 v0, v42

    if-ge v0, v2, :cond_17

    .line 714
    move-wide/from16 v0, p2

    long-to-int v2, v0

    sget-object v3, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v3, v3, v9

    mul-int/2addr v2, v3

    shl-int v18, v2, v8

    .line 715
    .local v18, "b":I
    sget-object v2, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v2, v2, v16

    shl-int v38, v2, v15

    .line 716
    .local v38, "s":I
    sget-object v2, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v2, v2, v9

    shl-int v30, v2, v12

    .line 717
    .local v30, "m":I
    mul-int/lit8 v44, v38, 0xa

    .line 723
    .local v44, "tens":I
    const/16 v35, 0x0

    .line 724
    div-int v37, v18, v38

    .line 725
    .local v37, "q":I
    rem-int v2, v18, v38

    mul-int/lit8 v18, v2, 0xa

    .line 726
    mul-int/lit8 v30, v30, 0xa

    .line 727
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    const/16 v27, 0x1

    .line 728
    .local v27, "low":Z
    :goto_4
    add-int v2, v18, v30

    move/from16 v0, v44

    if-le v2, v0, :cond_8

    const/16 v26, 0x1

    .line 729
    .local v26, "high":Z
    :goto_5
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 709
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

    .line 710
    .restart local v10    # "Bbits":I
    :cond_6
    add-int/lit8 v2, v16, 0x1

    mul-int/lit8 v2, v2, 0x3

    goto :goto_3

    .line 727
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

    .line 728
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_5

    .line 729
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 730
    :cond_a
    if-nez v37, :cond_b

    if-eqz v26, :cond_f

    .line 723
    :cond_b
    const/4 v2, 0x0

    .line 734
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 742
    :goto_7
    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v0, v2, :cond_c

    const/16 v2, 0x8

    move/from16 v0, v24

    if-lt v0, v2, :cond_10

    .line 743
    :cond_c
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 745
    .end local v35    # "ndigit":I
    .local v36, "ndigit":I
    :goto_8
    if-nez v27, :cond_d

    if-eqz v26, :cond_11

    .line 764
    :cond_d
    shl-int/lit8 v2, v18, 0x1

    sub-int v2, v2, v44

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .local v28, "lowDigitDifference":J
    move/from16 v35, v36

    .line 876
    .end local v18    # "b":I
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :goto_9
    add-int/lit8 v2, v24, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 877
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/FloatingDecimal;->digits:[C

    .line 878
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 882
    if-eqz v26, :cond_e

    .line 883
    if-eqz v27, :cond_38

    .line 884
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-nez v2, :cond_37

    .line 887
    move-object/from16 v0, p0

    iget v2, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v25, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    .line 533
    :cond_e
    :goto_a
    return-void

    .line 732
    .end local v28    # "lowDigitDifference":J
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v38    # "s":I
    .restart local v44    # "tens":I
    :cond_f
    add-int/lit8 v24, v24, -0x1

    .line 730
    goto :goto_7

    :cond_10
    move/from16 v36, v35

    .line 742
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_8

    .line 746
    :cond_11
    div-int v37, v18, v38

    .line 747
    rem-int v2, v18, v38

    mul-int/lit8 v18, v2, 0xa

    .line 748
    mul-int/lit8 v30, v30, 0xa

    .line 749
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 750
    :cond_13
    move/from16 v0, v30

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 751
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    const/16 v27, 0x1

    .line 752
    :goto_c
    add-int v2, v18, v30

    move/from16 v0, v44

    if-le v2, v0, :cond_15

    const/16 v26, 0x1

    .line 762
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

    .line 751
    :cond_14
    const/16 v27, 0x0

    goto :goto_c

    .line 752
    :cond_15
    const/16 v26, 0x0

    goto :goto_d

    .line 759
    :cond_16
    const/16 v27, 0x1

    .line 760
    const/16 v26, 0x1

    goto :goto_d

    .line 767
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
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v9

    mul-long v2, v2, p2

    shl-long v20, v2, v8

    .line 768
    .local v20, "b":J
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v16

    shl-long v40, v2, v15

    .line 769
    .local v40, "s":J
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    aget-wide v2, v2, v9

    shl-long v32, v2, v12

    .line 770
    .local v32, "m":J
    const-wide/16 v2, 0xa

    mul-long v46, v40, v2

    .line 776
    .local v46, "tens":J
    const/16 v35, 0x0

    .line 777
    div-long v2, v20, v40

    long-to-int v0, v2

    move/from16 v37, v0

    .line 778
    .restart local v37    # "q":I
    rem-long v2, v20, v40

    const-wide/16 v4, 0xa

    mul-long v20, v4, v2

    .line 779
    const-wide/16 v2, 0xa

    mul-long v32, v32, v2

    .line 780
    cmp-long v2, v20, v32

    if-gez v2, :cond_18

    const/16 v27, 0x1

    .line 781
    .restart local v27    # "low":Z
    :goto_e
    add-long v2, v20, v32

    cmp-long v2, v2, v46

    if-lez v2, :cond_19

    const/16 v26, 0x1

    .line 782
    .restart local v26    # "high":Z
    :goto_f
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 780
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "low":Z
    goto :goto_e

    .line 781
    :cond_19
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_f

    .line 782
    :cond_1a
    const/4 v2, 0x0

    goto :goto_10

    .line 783
    :cond_1b
    if-nez v37, :cond_1c

    if-eqz v26, :cond_1f

    .line 776
    :cond_1c
    const/4 v2, 0x0

    .line 787
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 795
    :goto_11
    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v0, v2, :cond_1d

    const/16 v2, 0x8

    move/from16 v0, v24

    if-lt v0, v2, :cond_20

    .line 796
    :cond_1d
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 798
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_12
    if-nez v27, :cond_1e

    if-eqz v26, :cond_21

    .line 817
    :cond_1e
    const/4 v2, 0x1

    shl-long v2, v20, v2

    sub-long v28, v2, v46

    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    .line 785
    .end local v28    # "lowDigitDifference":J
    :cond_1f
    add-int/lit8 v24, v24, -0x1

    .line 783
    goto :goto_11

    :cond_20
    move/from16 v36, v35

    .line 795
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    .line 799
    :cond_21
    div-long v2, v20, v40

    long-to-int v0, v2

    move/from16 v37, v0

    .line 800
    rem-long v2, v20, v40

    const-wide/16 v4, 0xa

    mul-long v20, v4, v2

    .line 801
    const-wide/16 v2, 0xa

    mul-long v32, v32, v2

    .line 802
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 803
    :cond_23
    const-wide/16 v2, 0x0

    cmp-long v2, v32, v2

    if-lez v2, :cond_26

    .line 804
    cmp-long v2, v20, v32

    if-gez v2, :cond_24

    const/16 v27, 0x1

    .line 805
    :goto_14
    add-long v2, v20, v32

    cmp-long v2, v2, v46

    if-lez v2, :cond_25

    const/16 v26, 0x1

    .line 815
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

    .line 804
    :cond_24
    const/16 v27, 0x0

    goto :goto_14

    .line 805
    :cond_25
    const/16 v26, 0x0

    goto :goto_15

    .line 812
    :cond_26
    const/16 v27, 0x1

    .line 813
    const/16 v26, 0x1

    goto :goto_15

    .line 827
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

    invoke-static {v2, v9, v8}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v11

    .line 828
    .local v11, "Bval":Lsun/misc/FDBigInt;
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v17

    .line 829
    .local v17, "Sval":Lsun/misc/FDBigInt;
    invoke-static {v9, v12}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 833
    .local v14, "Mval":Lsun/misc/FDBigInt;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FDBigInt;->normalizeMe()I

    move-result v39

    .local v39, "shiftBias":I
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 834
    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 835
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v43

    .line 841
    .local v43, "tenSval":Lsun/misc/FDBigInt;
    const/16 v35, 0x0

    .line 842
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v37

    .line 843
    .restart local v37    # "q":I
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 844
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_28

    const/16 v27, 0x1

    .line 845
    .restart local v27    # "low":Z
    :goto_16
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-lez v2, :cond_29

    const/16 v26, 0x1

    .line 846
    .restart local v26    # "high":Z
    :goto_17
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 844
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_28
    const/16 v27, 0x0

    .restart local v27    # "low":Z
    goto :goto_16

    .line 845
    :cond_29
    const/16 v26, 0x0

    .restart local v26    # "high":Z
    goto :goto_17

    .line 846
    :cond_2a
    const/4 v2, 0x0

    goto :goto_18

    .line 847
    :cond_2b
    if-nez v37, :cond_2c

    if-eqz v26, :cond_2f

    .line 841
    :cond_2c
    const/4 v2, 0x0

    .line 851
    const/16 v35, 0x1

    add-int/lit8 v3, v37, 0x30

    int-to-char v3, v3

    aput-char v3, v25, v2

    .line 859
    :goto_19
    const/4 v2, -0x3

    move/from16 v0, v24

    if-lt v0, v2, :cond_2d

    const/16 v2, 0x8

    move/from16 v0, v24

    if-lt v0, v2, :cond_30

    .line 860
    :cond_2d
    const/16 v27, 0x0

    const/16 v26, 0x0

    move/from16 v36, v35

    .line 862
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_1a
    if-nez v27, :cond_2e

    if-eqz v26, :cond_31

    .line 870
    :cond_2e
    if-eqz v26, :cond_36

    if-eqz v27, :cond_36

    .line 871
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 872
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

    .line 849
    .end local v28    # "lowDigitDifference":J
    :cond_2f
    add-int/lit8 v24, v24, -0x1

    .line 847
    goto :goto_19

    :cond_30
    move/from16 v36, v35

    .line 859
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    .line 863
    :cond_31
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v37

    .line 864
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v14

    .line 865
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

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

    .line 866
    :cond_33
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_34

    const/16 v27, 0x1

    .line 867
    :goto_1c
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-lez v2, :cond_35

    const/16 v26, 0x1

    .line 868
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

    .line 866
    :cond_34
    const/16 v27, 0x0

    goto :goto_1c

    .line 867
    :cond_35
    const/16 v26, 0x0

    goto :goto_1d

    .line 874
    :cond_36
    const-wide/16 v28, 0x0

    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    .line 888
    .end local v11    # "Bval":Lsun/misc/FDBigInt;
    .end local v14    # "Mval":Lsun/misc/FDBigInt;
    .end local v17    # "Sval":Lsun/misc/FDBigInt;
    .end local v39    # "shiftBias":I
    .end local v43    # "tenSval":Lsun/misc/FDBigInt;
    :cond_37
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-lez v2, :cond_e

    .line 889
    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    goto/16 :goto_a

    .line 892
    :cond_38
    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    goto/16 :goto_a
.end method

.method private getChars([C)I
    .locals 12
    .param p1, "result"    # [C

    .prologue
    const/16 v11, 0x2d

    const/4 v6, 0x1

    const/16 v10, 0x30

    const/16 v9, 0x2e

    const/4 v7, 0x0

    .line 920
    sget-boolean v5, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    .line 921
    :cond_1
    const/4 v2, 0x0

    .line 922
    .local v2, "i":I
    iget-boolean v5, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v5, :cond_2

    aput-char v11, p1, v7

    const/4 v2, 0x1

    .line 923
    :cond_2
    iget-boolean v5, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    if-eqz v5, :cond_3

    .line 924
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 925
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/2addr v2, v5

    .line 990
    :goto_1
    return v2

    .line 927
    :cond_3
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-lez v5, :cond_6

    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v8, 0x8

    if-ge v5, v8, :cond_6

    .line 929
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    iget v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 930
    .local v0, "charLength":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    invoke-static {v5, v7, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 931
    add-int/2addr v2, v0

    .line 932
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-ge v0, v5, :cond_4

    .line 933
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    sub-int v0, v5, v0

    .line 934
    sget-object v5, Ljava/lang/FloatingDecimal;->zero:[C

    invoke-static {v5, v7, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 935
    add-int/2addr v2, v0

    .line 936
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-char v9, p1, v2

    .line 937
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v10, p1, v3

    goto :goto_1

    .line 939
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v9, p1, v2

    .line 940
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-ge v0, v5, :cond_5

    .line 941
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    sub-int v4, v5, v0

    .line 942
    .local v4, "t":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    invoke-static {v5, v0, p1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 943
    add-int v2, v3, v4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 945
    .end local v2    # "i":I
    .end local v4    # "t":I
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v10, p1, v3

    goto :goto_1

    .line 948
    .end local v0    # "charLength":I
    :cond_6
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-gtz v5, :cond_8

    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/4 v8, -0x3

    if-le v5, v8, :cond_8

    .line 950
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v10, p1, v2

    .line 951
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    .line 952
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-eqz v5, :cond_7

    .line 953
    sget-object v5, Ljava/lang/FloatingDecimal;->zero:[C

    iget v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    neg-int v6, v6

    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 954
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    sub-int/2addr v2, v5

    .line 956
    :cond_7
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 957
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/2addr v2, v5

    .line 948
    goto :goto_1

    .line 960
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v5, v5, v7

    aput-char v5, p1, v2

    .line 961
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    .line 962
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-le v5, v6, :cond_9

    .line 963
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v7, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 964
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    .line 968
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    const/16 v5, 0x45

    aput-char v5, p1, v2

    .line 970
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-gtz v5, :cond_a

    .line 971
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v11, p1, v3

    .line 972
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    neg-int v5, v5

    add-int/lit8 v1, v5, 0x1

    .local v1, "e":I
    move v3, v2

    .line 977
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_3
    const/16 v5, 0x9

    if-gt v1, v5, :cond_b

    .line 978
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_1

    .line 966
    .end local v1    # "e":I
    :cond_9
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v10, p1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 974
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_a
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "e":I
    goto :goto_3

    .line 979
    :cond_b
    const/16 v5, 0x63

    if-gt v1, v5, :cond_c

    .line 980
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 981
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    .line 983
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 984
    rem-int/lit8 v1, v1, 0x64

    .line 985
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 986
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_1
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x10

    .line 2467
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2468
    .local v0, "value":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-lt v0, v2, :cond_1

    .line 2469
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected failure of digit conversion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2470
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2472
    :cond_1
    return v0
.end method

.method private static declared-synchronized getHexFloatPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    const-class v1, Ljava/lang/FloatingDecimal;

    monitor-enter v1

    .line 1934
    :try_start_0
    sget-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 1937
    const-string/jumbo v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    .line 1935
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    .line 1940
    :cond_0
    sget-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadLocalInstance()Ljava/lang/FloatingDecimal;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Ljava/lang/FloatingDecimal;->TL_INSTANCE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/FloatingDecimal;

    return-object v0
.end method

.method private static multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;
    .locals 1
    .param p0, "v"    # Lsun/misc/FDBigInt;
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    sget-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 165
    sget-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object p0

    .line 170
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 173
    :cond_1
    return-object p0

    .line 167
    :cond_2
    invoke-static {p1}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

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

    .line 376
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    aget-char v1, v2, v0

    .line 377
    .local v1, "q":I
    if-ne v1, v4, :cond_1

    .line 378
    :goto_0
    if-ne v1, v4, :cond_0

    if-lez v0, :cond_0

    .line 379
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    const/16 v3, 0x30

    aput-char v3, v2, v0

    .line 380
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v2, v0

    goto :goto_0

    .line 382
    :cond_0
    if-ne v1, v4, :cond_1

    .line 384
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 385
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    const/16 v3, 0x31

    aput-char v3, v2, v5

    .line 386
    return-void

    .line 390
    :cond_1
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    add-int/lit8 v3, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 374
    return-void
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2459
    const-string/jumbo v0, "^0+"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ulp(DZ)D
    .locals 12
    .param p0, "dval"    # D
    .param p2, "subtracting"    # Z

    .prologue
    const/16 v10, 0x34

    .line 234
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v6, v8

    .line 235
    .local v2, "lbits":J
    ushr-long v6, v2, v10

    long-to-int v0, v6

    .line 237
    .local v0, "binexp":I
    if-eqz p2, :cond_0

    if-lt v0, v10, :cond_0

    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 240
    add-int/lit8 v0, v0, -0x1

    .line 242
    :cond_0
    if-le v0, v10, :cond_2

    .line 243
    add-int/lit8 v1, v0, -0x34

    int-to-long v6, v1

    shl-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 249
    .local v4, "ulpval":D
    :goto_0
    if-eqz p2, :cond_1

    neg-double v4, v4

    .line 251
    :cond_1
    return-wide v4

    .line 244
    .end local v4    # "ulpval":D
    :cond_2
    if-nez v0, :cond_3

    .line 245
    const-wide/16 v4, 0x1

    .restart local v4    # "ulpval":D
    goto :goto_0

    .line 247
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
.method public appendTo(Ljava/lang/AbstractStringBuilder;)V
    .locals 9
    .param p1, "buf"    # Ljava/lang/AbstractStringBuilder;

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/16 v6, 0x2d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1001
    iget-boolean v2, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1002
    :cond_0
    iget-boolean v2, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 1004
    return-void

    .line 1006
    :cond_1
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-lez v2, :cond_4

    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    .line 1008
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    iget v3, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1009
    .local v0, "charLength":I
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    invoke-virtual {p1, v2, v4, v0}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 1010
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-ge v0, v2, :cond_2

    .line 1011
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    sub-int v0, v2, v0

    .line 1012
    sget-object v2, Ljava/lang/FloatingDecimal;->zero:[C

    invoke-virtual {p1, v2, v4, v0}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 1013
    const-string/jumbo v2, ".0"

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 1000
    .end local v0    # "charLength":I
    :goto_0
    return-void

    .line 1015
    .restart local v0    # "charLength":I
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1016
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-ge v0, v2, :cond_3

    .line 1017
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    goto :goto_0

    .line 1019
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    goto :goto_0

    .line 1022
    .end local v0    # "charLength":I
    :cond_4
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-gtz v2, :cond_6

    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/4 v3, -0x3

    if-le v2, v3, :cond_6

    .line 1023
    const-string/jumbo v2, "0."

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 1024
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-eqz v2, :cond_5

    .line 1025
    sget-object v2, Ljava/lang/FloatingDecimal;->zero:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    neg-int v3, v3

    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 1027
    :cond_5
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    goto :goto_0

    .line 1029
    :cond_6
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1030
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1031
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-le v2, v5, :cond_7

    .line 1032
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v5, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 1036
    :goto_1
    const/16 v2, 0x45

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1038
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    if-gtz v2, :cond_8

    .line 1039
    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1040
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    neg-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 1045
    .local v1, "e":I
    :goto_2
    const/16 v2, 0x9

    if-gt v1, v2, :cond_9

    .line 1046
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    goto :goto_0

    .line 1034
    .end local v1    # "e":I
    :cond_7
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    goto :goto_1

    .line 1042
    :cond_8
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "e":I
    goto :goto_2

    .line 1047
    :cond_9
    const/16 v2, 0x63

    if-gt v1, v2, :cond_a

    .line 1048
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1049
    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    goto/16 :goto_0

    .line 1051
    :cond_a
    div-int/lit8 v2, v1, 0x64

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1052
    rem-int/lit8 v1, v1, 0x64

    .line 1053
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 1054
    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    goto/16 :goto_0
.end method

.method public strictfp doubleValue()D
    .locals 42

    .prologue
    .line 1319
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    const/16 v10, 0x10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1325
    .local v9, "kDigits":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v10, Ljava/lang/FloatingDecimal;->infinity:[C

    if-eq v8, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v10, Ljava/lang/FloatingDecimal;->notANumber:[C

    if-ne v8, v10, :cond_3

    .line 1326
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v10, Ljava/lang/FloatingDecimal;->notANumber:[C

    if-ne v8, v10, :cond_1

    .line 1327
    const-wide/high16 v38, 0x7ff8000000000000L    # NaN

    return-wide v38

    .line 1329
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_2

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v38

    :cond_2
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1332
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_4

    .line 1333
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 1339
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    const/4 v10, 0x0

    aget-char v8, v8, v10

    add-int/lit8 v27, v8, -0x30

    .line 1340
    .local v27, "iValue":I
    const/16 v8, 0x9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 1341
    .local v26, "iDigits":I
    const/16 v25, 0x1

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1342
    mul-int/lit8 v8, v27, 0xa

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v10, v10, v25

    add-int/2addr v8, v10

    add-int/lit8 v27, v8, -0x30

    .line 1341
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1344
    :cond_5
    move/from16 v0, v27

    int-to-long v6, v0

    .line 1345
    .local v6, "lValue":J
    move/from16 v25, v26

    :goto_2
    move/from16 v0, v25

    if-ge v0, v9, :cond_6

    .line 1346
    const-wide/16 v38, 0xa

    mul-long v38, v38, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v8, v8, v25

    add-int/lit8 v8, v8, -0x30

    int-to-long v0, v8

    move-wide/from16 v40, v0

    add-long v6, v38, v40

    .line 1345
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1348
    :cond_6
    long-to-double v0, v6

    move-wide/from16 v20, v0

    .line 1349
    .local v20, "dValue":D
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    sub-int v22, v8, v9

    .line 1356
    .local v22, "exp":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    const/16 v10, 0xf

    if-gt v8, v10, :cond_18

    .line 1367
    if-eqz v22, :cond_7

    const-wide/16 v38, 0x0

    cmpl-double v8, v20, v38

    if-nez v8, :cond_9

    .line 1368
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_8

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .end local v20    # "dValue":D
    :cond_8
    return-wide v20

    .line 1369
    .restart local v20    # "dValue":D
    :cond_9
    if-ltz v22, :cond_13

    .line 1370
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    move/from16 v0, v22

    if-gt v0, v8, :cond_e

    .line 1375
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v22

    mul-double v30, v20, v38

    .line 1376
    .local v30, "rValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_a

    .line 1377
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v22

    div-double v36, v30, v38

    .line 1378
    .local v36, "tValue":D
    cmpl-double v8, v36, v20

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 1382
    .end local v36    # "tValue":D
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_b

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_b
    return-wide v30

    .line 1379
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_c
    cmpg-double v8, v36, v20

    if-gez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_3

    .line 1380
    :cond_d
    const/4 v8, -0x1

    goto :goto_3

    .line 1384
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_e
    rsub-int/lit8 v32, v9, 0xf

    .line 1385
    .local v32, "slop":I
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    add-int v8, v8, v32

    move/from16 v0, v22

    if-gt v0, v8, :cond_18

    .line 1392
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    aget-wide v38, v8, v32

    mul-double v20, v20, v38

    .line 1393
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    sub-int v10, v22, v32

    aget-wide v38, v8, v10

    mul-double v30, v20, v38

    .line 1395
    .restart local v30    # "rValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_f

    .line 1396
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    sub-int v10, v22, v32

    aget-wide v38, v8, v10

    div-double v36, v30, v38

    .line 1397
    .restart local v36    # "tValue":D
    cmpl-double v8, v36, v20

    if-nez v8, :cond_11

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 1401
    .end local v36    # "tValue":D
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_10

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_10
    return-wide v30

    .line 1398
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_11
    cmpg-double v8, v36, v20

    if-gez v8, :cond_12

    const/4 v8, 0x1

    goto :goto_4

    .line 1399
    :cond_12
    const/4 v8, -0x1

    goto :goto_4

    .line 1407
    .end local v30    # "rValue":D
    .end local v32    # "slop":I
    .end local v36    # "tValue":D
    :cond_13
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    neg-int v8, v8

    move/from16 v0, v22

    if-lt v0, v8, :cond_18

    .line 1411
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    move/from16 v0, v22

    neg-int v10, v0

    aget-wide v38, v8, v10

    div-double v30, v20, v38

    .line 1412
    .restart local v30    # "rValue":D
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    move/from16 v0, v22

    neg-int v10, v0

    aget-wide v38, v8, v10

    mul-double v36, v30, v38

    .line 1413
    .restart local v36    # "tValue":D
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_14

    .line 1414
    cmpl-double v8, v36, v20

    if-nez v8, :cond_16

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 1418
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_15

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .end local v30    # "rValue":D
    :cond_15
    return-wide v30

    .line 1415
    .restart local v30    # "rValue":D
    :cond_16
    cmpg-double v8, v36, v20

    if-gez v8, :cond_17

    const/4 v8, 0x1

    goto :goto_5

    .line 1416
    :cond_17
    const/4 v8, -0x1

    goto :goto_5

    .line 1434
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_18
    if-lez v22, :cond_26

    .line 1435
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v10, 0x135

    if-le v8, v10, :cond_1a

    .line 1440
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_19

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_6
    return-wide v38

    :cond_19
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_6

    .line 1442
    :cond_1a
    and-int/lit8 v8, v22, 0xf

    if-eqz v8, :cond_1b

    .line 1443
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    and-int/lit8 v10, v22, 0xf

    aget-wide v38, v8, v10

    mul-double v20, v20, v38

    .line 1445
    :cond_1b
    shr-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_21

    .line 1447
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_7
    const/4 v8, 0x1

    move/from16 v0, v22

    if-le v0, v8, :cond_1d

    .line 1448
    and-int/lit8 v8, v22, 0x1

    if-eqz v8, :cond_1c

    .line 1449
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v20, v20, v38

    .line 1447
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    shr-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1457
    :cond_1d
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v20, v38

    .line 1458
    .local v34, "t":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1471
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v34, v20, v38

    .line 1472
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v34, v38

    .line 1473
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1474
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_1e

    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_8
    return-wide v38

    :cond_1e
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_8

    .line 1476
    :cond_1f
    const-wide v34, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1478
    :cond_20
    move-wide/from16 v20, v34

    .line 1536
    .end local v28    # "j":I
    .end local v34    # "t":D
    :cond_21
    :goto_9
    new-instance v5, Lsun/misc/FDBigInt;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    move-object/from16 v0, p0

    iget v10, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-direct/range {v5 .. v10}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    .line 1537
    .local v5, "bigD0":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    move-object/from16 v0, p0

    iget v10, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    sub-int v22, v8, v10

    .line 1544
    :cond_22
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/FloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    move-result-object v15

    .line 1558
    .local v15, "bigB":Lsun/misc/FDBigInt;
    if-ltz v22, :cond_2f

    .line 1559
    const/4 v11, 0x0

    .local v11, "B5":I
    const/4 v4, 0x0

    .line 1560
    .local v4, "B2":I
    move/from16 v13, v22

    .local v13, "D5":I
    move/from16 v12, v22

    .line 1565
    .local v12, "D2":I
    :goto_a
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    if-ltz v8, :cond_30

    .line 1566
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    add-int/2addr v4, v8

    .line 1570
    :goto_b
    move v14, v4

    .line 1574
    .local v14, "Ulp2":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    move-object/from16 v0, p0

    iget v10, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    add-int/2addr v8, v10

    const/16 v10, -0x3fe

    if-gt v8, v10, :cond_31

    .line 1578
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    add-int/lit16 v8, v8, 0x3ff

    add-int/lit8 v24, v8, 0x34

    .line 1582
    .local v24, "hulpbias":I
    :goto_c
    add-int v4, v4, v24

    .line 1583
    add-int v12, v12, v24

    .line 1586
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1587
    .local v18, "common2":I
    sub-int v4, v4, v18

    .line 1588
    sub-int v12, v12, v18

    .line 1589
    sub-int v14, v14, v18

    .line 1591
    invoke-static {v15, v11, v4}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v15

    .line 1592
    new-instance v8, Lsun/misc/FDBigInt;

    invoke-direct {v8, v5}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    invoke-static {v8, v13, v12}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v16

    .line 1610
    .local v16, "bigD":Lsun/misc/FDBigInt;
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v17

    .local v17, "cmpResult":I
    if-lez v17, :cond_32

    .line 1611
    const/16 v29, 0x1

    .line 1612
    .local v29, "overvalue":Z
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v19

    .line 1613
    .local v19, "diff":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_23

    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    const/16 v10, -0x3fe

    if-le v8, v10, :cond_23

    .line 1618
    add-int/lit8 v14, v14, -0x1

    .line 1619
    if-gez v14, :cond_23

    .line 1622
    const/4 v14, 0x0

    .line 1623
    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 1634
    :cond_23
    :goto_d
    invoke-static {v11, v14}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v23

    .line 1635
    .local v23, "halfUlp":Lsun/misc/FDBigInt;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v17

    if-gez v17, :cond_34

    .line 1638
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_24

    .line 1639
    if-eqz v29, :cond_33

    const/4 v8, -0x1

    :goto_e
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 1663
    .end local v19    # "diff":Lsun/misc/FDBigInt;
    .end local v23    # "halfUlp":Lsun/misc/FDBigInt;
    .end local v29    # "overvalue":Z
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_25

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .end local v20    # "dValue":D
    :cond_25
    return-wide v20

    .line 1480
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

    .line 1481
    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    .line 1482
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v10, -0x145

    if-ge v8, v10, :cond_28

    .line 1487
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_27

    const-wide/high16 v38, -0x8000000000000000L

    :goto_10
    return-wide v38

    :cond_27
    const-wide/16 v38, 0x0

    goto :goto_10

    .line 1489
    :cond_28
    and-int/lit8 v8, v22, 0xf

    if-eqz v8, :cond_29

    .line 1490
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    and-int/lit8 v10, v22, 0xf

    aget-wide v38, v8, v10

    div-double v20, v20, v38

    .line 1492
    :cond_29
    shr-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_21

    .line 1494
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_11
    const/4 v8, 0x1

    move/from16 v0, v22

    if-le v0, v8, :cond_2b

    .line 1495
    and-int/lit8 v8, v22, 0x1

    if-eqz v8, :cond_2a

    .line 1496
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v20, v20, v38

    .line 1494
    :cond_2a
    add-int/lit8 v28, v28, 0x1

    shr-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 1504
    :cond_2b
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v20, v38

    .line 1505
    .restart local v34    # "t":D
    const-wide/16 v38, 0x0

    cmpl-double v8, v34, v38

    if-nez v8, :cond_2e

    .line 1518
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v34, v20, v38

    .line 1519
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    aget-wide v38, v8, v28

    mul-double v34, v34, v38

    .line 1520
    const-wide/16 v38, 0x0

    cmpl-double v8, v34, v38

    if-nez v8, :cond_2d

    .line 1521
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v8, :cond_2c

    const-wide/high16 v38, -0x8000000000000000L

    :goto_12
    return-wide v38

    :cond_2c
    const-wide/16 v38, 0x0

    goto :goto_12

    .line 1523
    :cond_2d
    const-wide/16 v34, 0x1

    .line 1525
    :cond_2e
    move-wide/from16 v20, v34

    goto/16 :goto_9

    .line 1562
    .end local v28    # "j":I
    .end local v34    # "t":D
    .restart local v5    # "bigD0":Lsun/misc/FDBigInt;
    .restart local v15    # "bigB":Lsun/misc/FDBigInt;
    :cond_2f
    move/from16 v0, v22

    neg-int v11, v0

    .restart local v11    # "B5":I
    move v4, v11

    .line 1563
    .restart local v4    # "B2":I
    const/4 v13, 0x0

    .restart local v13    # "D5":I
    const/4 v12, 0x0

    .restart local v12    # "D2":I
    goto/16 :goto_a

    .line 1568
    :cond_30
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    sub-int/2addr v12, v8

    goto/16 :goto_b

    .line 1580
    .restart local v14    # "Ulp2":I
    :cond_31
    move-object/from16 v0, p0

    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    rsub-int/lit8 v24, v8, 0x36

    .restart local v24    # "hulpbias":I
    goto/16 :goto_c

    .line 1626
    .restart local v16    # "bigD":Lsun/misc/FDBigInt;
    .restart local v17    # "cmpResult":I
    .restart local v18    # "common2":I
    :cond_32
    if-gez v17, :cond_24

    .line 1627
    const/16 v29, 0x0

    .line 1628
    .restart local v29    # "overvalue":Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v19

    .restart local v19    # "diff":Lsun/misc/FDBigInt;
    goto/16 :goto_d

    .line 1639
    .restart local v23    # "halfUlp":Lsun/misc/FDBigInt;
    :cond_33
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 1642
    :cond_34
    if-nez v17, :cond_36

    .line 1645
    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Ljava/lang/FloatingDecimal;->ulp(DZ)D

    move-result-wide v38

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    mul-double v38, v38, v40

    add-double v20, v20, v38

    .line 1647
    move-object/from16 v0, p0

    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v8, :cond_24

    .line 1648
    if-eqz v29, :cond_35

    const/4 v8, -0x1

    :goto_13
    move-object/from16 v0, p0

    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    goto/16 :goto_f

    :cond_35
    const/4 v8, 0x1

    goto :goto_13

    .line 1656
    :cond_36
    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Ljava/lang/FloatingDecimal;->ulp(DZ)D

    move-result-wide v38

    add-double v20, v20, v38

    .line 1657
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
    .line 1678
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    const/16 v11, 0x8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1683
    .local v6, "kDigits":I
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v11, Ljava/lang/FloatingDecimal;->infinity:[C

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v11, Ljava/lang/FloatingDecimal;->notANumber:[C

    if-ne v10, v11, :cond_3

    .line 1684
    :cond_0
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    sget-object v11, Ljava/lang/FloatingDecimal;->notANumber:[C

    if-ne v10, v11, :cond_1

    .line 1685
    const/high16 v10, 0x7fc00000    # NaNf

    return v10

    .line 1687
    :cond_1
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_2

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    return v10

    :cond_2
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 1693
    :cond_3
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    add-int/lit8 v5, v10, -0x30

    .line 1694
    .local v5, "iValue":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1695
    mul-int/lit8 v10, v5, 0xa

    iget-object v11, p0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v11, v11, v4

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, -0x30

    .line 1694
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1697
    :cond_4
    int-to-float v3, v5

    .line 1698
    .local v3, "fValue":F
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    sub-int v2, v10, v6

    .line 1705
    .local v2, "exp":I
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    const/4 v11, 0x7

    if-gt v10, v11, :cond_d

    .line 1716
    if-eqz v2, :cond_5

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-nez v10, :cond_7

    .line 1717
    :cond_5
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_6

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_6
    return v3

    .line 1718
    .restart local v3    # "fValue":F
    :cond_7
    if-ltz v2, :cond_b

    .line 1719
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    if-gt v2, v10, :cond_9

    .line 1724
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    aget v10, v10, v2

    mul-float/2addr v3, v10

    .line 1725
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_8

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_8
    return v3

    .line 1727
    .restart local v3    # "fValue":F
    :cond_9
    rsub-int/lit8 v7, v6, 0x7

    .line 1728
    .local v7, "slop":I
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    add-int/2addr v10, v7

    if-gt v2, v10, :cond_10

    .line 1735
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    aget v10, v10, v7

    mul-float/2addr v3, v10

    .line 1736
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    sub-int v11, v2, v7

    aget v10, v10, v11

    mul-float/2addr v3, v10

    .line 1737
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_a

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_a
    return v3

    .line 1743
    .end local v7    # "slop":I
    .restart local v3    # "fValue":F
    :cond_b
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    neg-int v10, v10

    if-lt v2, v10, :cond_10

    .line 1747
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    neg-int v11, v2

    aget v10, v10, v11

    div-float/2addr v3, v10

    .line 1748
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_c

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_c
    return v3

    .line 1754
    .restart local v3    # "fValue":F
    :cond_d
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    iget v11, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-lt v10, v11, :cond_10

    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    iget v11, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    add-int/2addr v10, v11

    const/16 v11, 0xf

    if-gt v10, v11, :cond_10

    .line 1764
    int-to-long v8, v5

    .line 1765
    .local v8, "lValue":J
    move v4, v6

    :goto_2
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    if-ge v4, v10, :cond_e

    .line 1766
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    iget-object v12, p0, Ljava/lang/FloatingDecimal;->digits:[C

    aget-char v12, v12, v4

    add-int/lit8 v12, v12, -0x30

    int-to-long v12, v12

    add-long v8, v10, v12

    .line 1765
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1768
    :cond_e
    long-to-double v0, v8

    .line 1769
    .local v0, "dValue":D
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    iget v11, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    sub-int v2, v10, v11

    .line 1770
    sget-object v10, Ljava/lang/FloatingDecimal;->small10pow:[D

    aget-wide v10, v10, v2

    mul-double/2addr v0, v10

    .line 1771
    double-to-float v3, v0

    .line 1772
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_f

    neg-float v3, v3

    .end local v3    # "fValue":F
    :cond_f
    return v3

    .line 1784
    .end local v0    # "dValue":D
    .end local v8    # "lValue":J
    .restart local v3    # "fValue":F
    :cond_10
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v11, 0x27

    if-le v10, v11, :cond_12

    .line 1789
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_11

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_3
    return v10

    :cond_11
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_3

    .line 1790
    :cond_12
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    const/16 v11, -0x2e

    if-ge v10, v11, :cond_14

    .line 1795
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v10, :cond_13

    const/high16 v10, -0x80000000

    :goto_4
    return v10

    :cond_13
    const/4 v10, 0x0

    goto :goto_4

    .line 1810
    :cond_14
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    :goto_5
    iput-boolean v10, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    .line 1811
    invoke-virtual {p0}, Ljava/lang/FloatingDecimal;->doubleValue()D

    move-result-wide v0

    .line 1812
    .restart local v0    # "dValue":D
    invoke-virtual {p0, v0, v1}, Ljava/lang/FloatingDecimal;->stickyRound(D)F

    move-result v10

    return v10

    .line 1810
    .end local v0    # "dValue":D
    :cond_15
    const/4 v10, 0x1

    goto :goto_5
.end method

.method public loadDouble(D)Ljava/lang/FloatingDecimal;
    .locals 11
    .param p1, "d"    # D

    .prologue
    .line 408
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 413
    .local v2, "dBits":J
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    .line 414
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    .line 415
    const/4 v6, 0x0

    iput v6, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 418
    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 419
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    .line 420
    const-wide/high16 v6, -0x8000000000000000L

    xor-long/2addr v2, v6

    .line 426
    :goto_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v6, v2

    const/16 v8, 0x34

    shr-long/2addr v6, v8

    long-to-int v0, v6

    .line 427
    .local v0, "binExp":I
    const-wide v6, 0xfffffffffffffL

    and-long v4, v2, v6

    .line 428
    .local v4, "fractBits":J
    const/16 v6, 0x7ff

    if-ne v0, v6, :cond_2

    .line 429
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    .line 430
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 431
    sget-object v6, Ljava/lang/FloatingDecimal;->infinity:[C

    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 436
    :goto_1
    iget-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    array-length v6, v6

    iput v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 437
    return-object p0

    .line 422
    .end local v0    # "binExp":I
    .end local v4    # "fractBits":J
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    goto :goto_0

    .line 433
    .restart local v0    # "binExp":I
    .restart local v4    # "fractBits":J
    :cond_1
    sget-object v6, Ljava/lang/FloatingDecimal;->notANumber:[C

    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 434
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    goto :goto_1

    .line 439
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    .line 444
    if-nez v0, :cond_5

    .line 445
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 447
    const/4 v6, 0x0

    iput v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 448
    sget-object v6, Ljava/lang/FloatingDecimal;->zero:[C

    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 449
    const/4 v6, 0x1

    iput v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 450
    return-object p0

    .line 452
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 453
    const/4 v6, 0x1

    shl-long/2addr v4, v6

    .line 454
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 456
    :cond_4
    add-int/lit8 v6, v0, 0x34

    add-int/lit8 v1, v6, 0x1

    .line 457
    .local v1, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    .line 462
    :goto_3
    add-int/lit16 v0, v0, -0x3ff

    .line 464
    invoke-direct {p0, v0, v4, v5, v1}, Ljava/lang/FloatingDecimal;->dtoa(IJI)V

    .line 465
    return-object p0

    .line 459
    .end local v1    # "nSignificantBits":I
    :cond_5
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v4, v6

    .line 460
    const/16 v1, 0x35

    .restart local v1    # "nSignificantBits":I
    goto :goto_3
.end method

.method public loadFloat(F)Ljava/lang/FloatingDecimal;
    .locals 9
    .param p1, "f"    # F

    .prologue
    const/high16 v7, 0x800000

    const/high16 v6, -0x80000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 472
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 477
    .local v1, "fBits":I
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    .line 478
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    .line 479
    iput v8, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 482
    and-int v4, v1, v6

    if-eqz v4, :cond_0

    .line 483
    iput-boolean v5, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    .line 484
    xor-int/2addr v1, v6

    .line 490
    :goto_0
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    .line 491
    .local v0, "binExp":I
    const v4, 0x7fffff

    and-int v2, v1, v4

    .line 492
    .local v2, "fractBits":I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    .line 493
    iput-boolean v5, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    .line 494
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 495
    sget-object v4, Ljava/lang/FloatingDecimal;->infinity:[C

    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 500
    :goto_1
    iget-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    array-length v4, v4

    iput v4, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 501
    return-object p0

    .line 486
    .end local v0    # "binExp":I
    .end local v2    # "fractBits":I
    :cond_0
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    goto :goto_0

    .line 497
    .restart local v0    # "binExp":I
    .restart local v2    # "fractBits":I
    :cond_1
    sget-object v4, Ljava/lang/FloatingDecimal;->notANumber:[C

    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 498
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    goto :goto_1

    .line 503
    :cond_2
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    .line 508
    if-nez v0, :cond_5

    .line 509
    if-nez v2, :cond_3

    .line 511
    iput v8, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 512
    sget-object v4, Ljava/lang/FloatingDecimal;->zero:[C

    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 513
    iput v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 514
    return-object p0

    .line 516
    :cond_3
    :goto_2
    and-int v4, v2, v7

    if-nez v4, :cond_4

    .line 517
    shl-int/lit8 v2, v2, 0x1

    .line 518
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 520
    :cond_4
    add-int/lit8 v4, v0, 0x17

    add-int/lit8 v3, v4, 0x1

    .line 521
    .local v3, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    .line 526
    :goto_3
    add-int/lit8 v0, v0, -0x7f

    .line 528
    int-to-long v4, v2

    const/16 v6, 0x1d

    shl-long/2addr v4, v6

    invoke-direct {p0, v0, v4, v5, v3}, Ljava/lang/FloatingDecimal;->dtoa(IJI)V

    .line 529
    return-object p0

    .line 523
    .end local v3    # "nSignificantBits":I
    :cond_5
    or-int/2addr v2, v7

    .line 524
    const/16 v3, 0x18

    .restart local v3    # "nSignificantBits":I
    goto :goto_3
.end method

.method parseHexString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;
    .locals 46
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1951
    invoke-static {}, Ljava/lang/FloatingDecimal;->getHexFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 1952
    .local v23, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v39

    .line 1954
    .local v39, "validInput":Z
    if-nez v39, :cond_0

    .line 1956
    new-instance v42, Ljava/lang/NumberFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "For input string: \""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 1983
    :cond_0
    const/16 v42, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 1984
    .local v12, "group1":Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string/jumbo v42, "+"

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2

    :cond_1
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 2016
    .local v32, "sign":D
    :goto_0
    const/16 v35, 0x0

    .line 2017
    .local v35, "significandString":Ljava/lang/String;
    const/16 v34, 0x0

    .line 2018
    .local v34, "signifLength":I
    const/4 v9, 0x0

    .line 2020
    .local v9, "exponentAdjust":I
    const/16 v22, 0x0

    .line 2023
    .local v22, "leftDigits":I
    const/16 v30, 0x0

    .line 2037
    .local v30, "rightDigits":I
    const/16 v42, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "group4":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2039
    invoke-static {v13}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2040
    .local v35, "significandString":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v22

    .line 2059
    :goto_1
    invoke-static/range {v35 .. v35}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2060
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v34

    .line 2065
    const/16 v42, 0x1

    move/from16 v0, v22

    move/from16 v1, v42

    if-lt v0, v1, :cond_5

    .line 2066
    add-int/lit8 v42, v22, -0x1

    mul-int/lit8 v9, v42, 0x4

    .line 2074
    :goto_2
    if-nez v34, :cond_6

    .line 2075
    const-wide/16 v42, 0x0

    mul-double v42, v42, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v42

    return-object v42

    .line 1984
    .end local v9    # "exponentAdjust":I
    .end local v13    # "group4":Ljava/lang/String;
    .end local v22    # "leftDigits":I
    .end local v30    # "rightDigits":I
    .end local v32    # "sign":D
    .end local v34    # "signifLength":I
    .end local v35    # "significandString":Ljava/lang/String;
    :cond_2
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .restart local v32    # "sign":D
    goto :goto_0

    .line 2045
    .restart local v9    # "exponentAdjust":I
    .restart local v13    # "group4":Ljava/lang/String;
    .restart local v22    # "leftDigits":I
    .restart local v30    # "rightDigits":I
    .restart local v34    # "signifLength":I
    .local v35, "significandString":Ljava/lang/String;
    :cond_3
    const/16 v42, 0x6

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2046
    .local v14, "group6":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    .line 2049
    const/16 v42, 0x7

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2050
    .local v15, "group7":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v30

    .line 2054
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v14, :cond_4

    const-string/jumbo v14, ""

    .end local v14    # "group6":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .local v35, "significandString":Ljava/lang/String;
    goto :goto_1

    .line 2068
    .end local v15    # "group7":Ljava/lang/String;
    :cond_5
    sub-int v42, v30, v34

    add-int/lit8 v42, v42, 0x1

    mul-int/lit8 v9, v42, -0x4

    goto :goto_2

    .line 2087
    :cond_6
    const/16 v42, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 2088
    .local v16, "group8":Ljava/lang/String;
    if-eqz v16, :cond_7

    const-string/jumbo v42, "+"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 2091
    :goto_3
    const/16 v42, 0x9

    :try_start_0
    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v40, v0

    .line 2112
    .local v40, "unsignedRawExponent":J
    if-eqz v27, :cond_9

    const-wide/16 v42, 0x1

    :goto_4
    mul-long v28, v42, v40

    .line 2116
    .local v28, "rawExponent":J
    int-to-long v0, v9

    move-wide/from16 v42, v0

    add-long v10, v28, v42

    .line 2122
    .local v10, "exponent":J
    const/16 v31, 0x0

    .line 2123
    .local v31, "round":Z
    const/16 v38, 0x0

    .line 2124
    .local v38, "sticky":Z
    const/4 v4, 0x0

    .line 2125
    .local v4, "bitsCopied":I
    const/16 v26, 0x0

    .line 2133
    .local v26, "nextShift":I
    const/16 v42, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 2144
    .local v20, "leadingDigit":J
    const-wide/16 v42, 0x1

    cmp-long v42, v20, v42

    if-nez v42, :cond_a

    .line 2145
    const/16 v42, 0x34

    shl-long v42, v20, v42

    .line 2126
    const-wide/16 v44, 0x0

    .line 2145
    or-long v36, v44, v42

    .line 2146
    .local v36, "significand":J
    const/16 v26, 0x30

    .line 2185
    :goto_5
    const/16 v17, 0x0

    .line 2186
    .local v17, "i":I
    const/16 v17, 0x1

    .line 2187
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    if-ltz v26, :cond_e

    .line 2189
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v6, v0

    .line 2190
    .local v6, "currentDigit":J
    shl-long v42, v6, v26

    or-long v36, v36, v42

    .line 2191
    add-int/lit8 v26, v26, -0x4

    .line 2188
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2088
    .end local v4    # "bitsCopied":I
    .end local v6    # "currentDigit":J
    .end local v10    # "exponent":J
    .end local v17    # "i":I
    .end local v20    # "leadingDigit":J
    .end local v26    # "nextShift":I
    .end local v28    # "rawExponent":J
    .end local v31    # "round":Z
    .end local v36    # "significand":J
    .end local v38    # "sticky":Z
    .end local v40    # "unsignedRawExponent":J
    :cond_7
    const/16 v27, 0x1

    .local v27, "positiveExponent":Z
    goto :goto_3

    .line 2093
    .end local v27    # "positiveExponent":Z
    :catch_0
    move-exception v8

    .line 2107
    .local v8, "e":Ljava/lang/NumberFormatException;
    if-eqz v27, :cond_8

    .line 2108
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2107
    :goto_7
    mul-double v42, v42, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v42

    return-object v42

    .line 2108
    :cond_8
    const-wide/16 v42, 0x0

    goto :goto_7

    .line 2112
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v40    # "unsignedRawExponent":J
    :cond_9
    const-wide/16 v42, -0x1

    goto :goto_4

    .line 2148
    .restart local v4    # "bitsCopied":I
    .restart local v10    # "exponent":J
    .restart local v20    # "leadingDigit":J
    .restart local v26    # "nextShift":I
    .restart local v28    # "rawExponent":J
    .restart local v31    # "round":Z
    .restart local v38    # "sticky":Z
    :cond_a
    const-wide/16 v42, 0x3

    cmp-long v42, v20, v42

    if-gtz v42, :cond_b

    .line 2149
    const/16 v42, 0x33

    shl-long v42, v20, v42

    .line 2126
    const-wide/16 v44, 0x0

    .line 2149
    or-long v36, v44, v42

    .line 2150
    .restart local v36    # "significand":J
    const/16 v26, 0x2f

    .line 2151
    const-wide/16 v42, 0x1

    add-long v10, v10, v42

    goto :goto_5

    .line 2153
    .end local v36    # "significand":J
    :cond_b
    const-wide/16 v42, 0x7

    cmp-long v42, v20, v42

    if-gtz v42, :cond_c

    .line 2154
    const/16 v42, 0x32

    shl-long v42, v20, v42

    .line 2126
    const-wide/16 v44, 0x0

    .line 2154
    or-long v36, v44, v42

    .line 2155
    .restart local v36    # "significand":J
    const/16 v26, 0x2e

    .line 2156
    const-wide/16 v42, 0x2

    add-long v10, v10, v42

    goto :goto_5

    .line 2158
    .end local v36    # "significand":J
    :cond_c
    const-wide/16 v42, 0xf

    cmp-long v42, v20, v42

    if-gtz v42, :cond_d

    .line 2159
    const/16 v42, 0x31

    shl-long v42, v20, v42

    .line 2126
    const-wide/16 v44, 0x0

    .line 2159
    or-long v36, v44, v42

    .line 2160
    .restart local v36    # "significand":J
    const/16 v26, 0x2d

    .line 2161
    const-wide/16 v42, 0x3

    add-long v10, v10, v42

    goto :goto_5

    .line 2163
    .end local v36    # "significand":J
    :cond_d
    new-instance v42, Ljava/lang/AssertionError;

    const-string/jumbo v43, "Result from digit conversion too large!"

    invoke-direct/range {v42 .. v43}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v42

    .line 2199
    .restart local v17    # "i":I
    .restart local v36    # "significand":J
    :cond_e
    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    .line 2200
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v6, v0

    .line 2204
    .restart local v6    # "currentDigit":J
    packed-switch v26, :pswitch_data_0

    .line 2237
    new-instance v42, Ljava/lang/AssertionError;

    const-string/jumbo v43, "Unexpected shift distance remainder."

    invoke-direct/range {v42 .. v43}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v42

    .line 2208
    :pswitch_0
    const-wide/16 v42, 0xe

    and-long v42, v42, v6

    const/16 v44, 0x1

    shr-long v42, v42, v44

    or-long v36, v36, v42

    .line 2209
    const-wide/16 v42, 0x1

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_10

    const/16 v31, 0x1

    .line 2246
    :goto_8
    add-int/lit8 v17, v17, 0x1

    .line 2247
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    if-eqz v38, :cond_17

    .line 2260
    .end local v6    # "currentDigit":J
    :cond_f
    const-wide/16 v42, 0x3ff

    cmp-long v42, v10, v42

    if-lez v42, :cond_1a

    .line 2262
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double v42, v42, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v42

    return-object v42

    .line 2209
    .restart local v6    # "currentDigit":J
    :cond_10
    const/16 v31, 0x0

    goto :goto_8

    .line 2215
    :pswitch_1
    const-wide/16 v42, 0xc

    and-long v42, v42, v6

    const/16 v44, 0x2

    shr-long v42, v42, v44

    or-long v36, v36, v42

    .line 2216
    const-wide/16 v42, 0x2

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_11

    const/16 v31, 0x1

    .line 2217
    :goto_a
    const-wide/16 v42, 0x1

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_12

    const/16 v38, 0x1

    goto :goto_8

    .line 2216
    :cond_11
    const/16 v31, 0x0

    goto :goto_a

    .line 2217
    :cond_12
    const/16 v38, 0x0

    goto :goto_8

    .line 2222
    :pswitch_2
    const-wide/16 v42, 0x8

    and-long v42, v42, v6

    const/16 v44, 0x3

    shr-long v42, v42, v44

    or-long v36, v36, v42

    .line 2224
    const-wide/16 v42, 0x4

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_13

    const/16 v31, 0x1

    .line 2225
    :goto_b
    const-wide/16 v42, 0x3

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_14

    const/16 v38, 0x1

    goto :goto_8

    .line 2224
    :cond_13
    const/16 v31, 0x0

    goto :goto_b

    .line 2225
    :cond_14
    const/16 v38, 0x0

    goto :goto_8

    .line 2231
    :pswitch_3
    const-wide/16 v42, 0x8

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_15

    const/16 v31, 0x1

    .line 2233
    :goto_c
    const-wide/16 v42, 0x7

    and-long v42, v42, v6

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_16

    const/16 v38, 0x1

    goto/16 :goto_8

    .line 2231
    :cond_15
    const/16 v31, 0x0

    goto :goto_c

    .line 2233
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 2248
    :cond_17
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v6, v0

    .line 2249
    if-nez v38, :cond_18

    const-wide/16 v42, 0x0

    cmp-long v42, v6, v42

    if-eqz v42, :cond_19

    :cond_18
    const/16 v38, 0x1

    .line 2250
    :goto_d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 2249
    :cond_19
    const/16 v38, 0x0

    goto :goto_d

    .line 2264
    .end local v6    # "currentDigit":J
    :cond_1a
    const-wide/16 v42, 0x3ff

    cmp-long v42, v10, v42

    if-gtz v42, :cond_20

    .line 2265
    const-wide/16 v42, -0x3fe

    cmp-long v42, v10, v42

    if-ltz v42, :cond_20

    .line 2279
    const-wide/16 v42, 0x3ff

    .line 2278
    add-long v42, v42, v10

    .line 2280
    const/16 v44, 0x34

    .line 2278
    shl-long v42, v42, v44

    .line 2281
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2278
    and-long v42, v42, v44

    .line 2282
    const-wide v44, 0xfffffffffffffL

    and-long v44, v44, v36

    .line 2278
    or-long v36, v42, v44

    .line 2357
    .end local v38    # "sticky":Z
    :goto_e
    const/16 v18, 0x0

    .line 2358
    .local v18, "incremented":Z
    const-wide/16 v42, 0x1

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-nez v42, :cond_29

    const/16 v19, 0x1

    .line 2359
    .local v19, "leastZero":Z
    :goto_f
    if-eqz v19, :cond_1b

    if-eqz v31, :cond_1b

    if-nez v38, :cond_1c

    .line 2360
    :cond_1b
    if-nez v19, :cond_1d

    .line 2359
    if-eqz v31, :cond_1d

    .line 2361
    :cond_1c
    const/16 v18, 0x1

    .line 2362
    const-wide/16 v42, 0x1

    add-long v36, v36, v42

    .line 2366
    :cond_1d
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v42

    .line 2365
    move-wide/from16 v0, v42

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v42

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    .line 2392
    const-wide/16 v42, -0x96

    cmp-long v42, v10, v42

    if-ltz v42, :cond_1f

    .line 2393
    const-wide/16 v42, 0x7f

    cmp-long v42, v10, v42

    if-gtz v42, :cond_1f

    .line 2411
    const-wide/32 v42, 0xfffffff

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-nez v42, :cond_1f

    .line 2420
    if-nez v31, :cond_1e

    if-eqz v38, :cond_1f

    .line 2421
    :cond_1e
    if-eqz v19, :cond_2a

    .line 2430
    xor-int v42, v31, v38

    if-eqz v42, :cond_1f

    .line 2431
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/FloatingDecimal;->roundDir:I

    .line 2449
    :cond_1f
    :goto_10
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->fromHex:Z

    .line 2450
    return-object p0

    .line 2287
    .end local v18    # "incremented":Z
    .end local v19    # "leastZero":Z
    .restart local v38    # "sticky":Z
    :cond_20
    const-wide/16 v42, -0x433

    cmp-long v42, v10, v42

    if-gez v42, :cond_21

    .line 2291
    const-wide/16 v42, 0x0

    mul-double v42, v42, v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v42

    return-object v42

    .line 2299
    :cond_21
    if-nez v38, :cond_22

    move/from16 v38, v31

    .line 2300
    .end local v38    # "sticky":Z
    :goto_11
    const/16 v31, 0x0

    .line 2309
    long-to-int v0, v10

    move/from16 v42, v0

    move/from16 v0, v42

    add-int/lit16 v0, v0, 0x432

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    .line 2308
    rsub-int/lit8 v5, v42, 0x35

    .line 2310
    .local v5, "bitsDiscarded":I
    sget-boolean v42, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v42, :cond_24

    const/16 v42, 0x1

    move/from16 v0, v42

    if-lt v5, v0, :cond_23

    const/16 v42, 0x35

    move/from16 v0, v42

    if-gt v5, v0, :cond_23

    const/16 v42, 0x1

    :goto_12
    if-nez v42, :cond_24

    new-instance v42, Ljava/lang/AssertionError;

    invoke-direct/range {v42 .. v42}, Ljava/lang/AssertionError;-><init>()V

    throw v42

    .line 2299
    .end local v5    # "bitsDiscarded":I
    .restart local v38    # "sticky":Z
    :cond_22
    const/16 v38, 0x1

    goto :goto_11

    .line 2310
    .end local v38    # "sticky":Z
    .restart local v5    # "bitsDiscarded":I
    :cond_23
    const/16 v42, 0x0

    goto :goto_12

    .line 2314
    :cond_24
    add-int/lit8 v42, v5, -0x1

    const-wide/16 v44, 0x1

    shl-long v42, v44, v42

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_27

    const/16 v31, 0x1

    .line 2315
    :goto_13
    const/16 v42, 0x1

    move/from16 v0, v42

    if-le v5, v0, :cond_26

    .line 2318
    add-int/lit8 v42, v5, -0x1

    const-wide/16 v44, -0x1

    shl-long v42, v44, v42

    move-wide/from16 v0, v42

    not-long v0, v0

    move-wide/from16 v24, v0

    .line 2319
    .local v24, "mask":J
    if-nez v38, :cond_25

    and-long v42, v36, v24

    const-wide/16 v44, 0x0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_28

    :cond_25
    const/16 v38, 0x1

    .line 2323
    .end local v24    # "mask":J
    :cond_26
    :goto_14
    shr-long v36, v36, v5

    .line 2329
    const-wide v42, 0xfffffffffffffL

    and-long v42, v42, v36

    .line 2325
    const-wide/16 v44, 0x0

    or-long v36, v44, v42

    goto/16 :goto_e

    .line 2314
    :cond_27
    const/16 v31, 0x0

    goto :goto_13

    .line 2319
    .restart local v24    # "mask":J
    :cond_28
    const/16 v38, 0x0

    .restart local v38    # "sticky":Z
    goto :goto_14

    .line 2358
    .end local v5    # "bitsDiscarded":I
    .end local v24    # "mask":J
    .end local v38    # "sticky":Z
    .restart local v18    # "incremented":Z
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 2442
    .restart local v19    # "leastZero":Z
    :cond_2a
    if-eqz v31, :cond_1f

    .line 2443
    const/16 v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/FloatingDecimal;->roundDir:I

    goto/16 :goto_10

    .line 2204
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;
    .locals 31
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1061
    const/16 v18, 0x0

    .line 1062
    .local v18, "isNegative":Z
    const/16 v26, 0x0

    .line 1068
    .local v26, "signSeen":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1070
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 1071
    .local v20, "l":I
    if-nez v20, :cond_1

    new-instance v28, Ljava/lang/NumberFormatException;

    const-string/jumbo v29, "empty String"

    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    .end local v20    # "l":I
    :catch_0
    move-exception v10

    .line 1306
    :cond_0
    new-instance v28, Ljava/lang/NumberFormatException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "For input string: \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 1072
    .restart local v20    # "l":I
    :cond_1
    const/16 v16, 0x0

    .line 1073
    .local v16, "i":I
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "c":C
    packed-switch v4, :pswitch_data_0

    .line 1083
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1084
    const/16 v28, 0x4e

    move/from16 v0, v28

    if-eq v4, v0, :cond_2

    const/16 v28, 0x49

    move/from16 v0, v28

    if-ne v4, v0, :cond_7

    .line 1085
    :cond_2
    const/16 v25, 0x0

    .line 1086
    .local v25, "potentialNaN":Z
    const/16 v27, 0x0

    .line 1088
    .local v27, "targetChars":[C
    const/16 v28, 0x4e

    move/from16 v0, v28

    if-ne v4, v0, :cond_3

    .line 1089
    sget-object v27, Ljava/lang/FloatingDecimal;->notANumber:[C

    .line 1090
    .local v27, "targetChars":[C
    const/16 v25, 0x1

    .line 1096
    :goto_1
    const/16 v19, 0x0

    .line 1097
    .local v19, "j":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1098
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aget-char v29, v27, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1099
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1075
    .end local v19    # "j":I
    .end local v25    # "potentialNaN":Z
    .end local v27    # "targetChars":[C
    :pswitch_1
    const/16 v18, 0x1

    .line 1078
    :pswitch_2
    const/16 v16, 0x1

    .line 1079
    const/16 v26, 0x1

    goto :goto_0

    .line 1092
    .restart local v25    # "potentialNaN":Z
    .local v27, "targetChars":[C
    :cond_3
    sget-object v27, Ljava/lang/FloatingDecimal;->infinity:[C

    .local v27, "targetChars":[C
    goto :goto_1

    .line 1109
    .restart local v19    # "j":I
    :cond_4
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1110
    if-eqz v25, :cond_5

    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v28

    :goto_3
    return-object v28

    .line 1111
    :cond_5
    if-eqz v18, :cond_6

    .line 1112
    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1111
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v28

    goto :goto_3

    .line 1113
    :cond_6
    const-wide/high16 v28, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    .line 1119
    .end local v19    # "j":I
    .end local v25    # "potentialNaN":Z
    .end local v27    # "targetChars":[C
    :cond_7
    const/16 v28, 0x30

    move/from16 v0, v28

    if-ne v4, v0, :cond_9

    .line 1120
    add-int/lit8 v28, v16, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_9

    .line 1121
    add-int/lit8 v28, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1122
    .local v5, "ch":C
    const/16 v28, 0x78

    move/from16 v0, v28

    if-eq v5, v0, :cond_8

    const/16 v28, 0x58

    move/from16 v0, v28

    if-ne v5, v0, :cond_9

    .line 1123
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/lang/FloatingDecimal;->parseHexString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    move-result-object v28

    return-object v28

    .line 1127
    .end local v5    # "ch":C
    :cond_9
    move/from16 v0, v20

    new-array v9, v0, [C

    .line 1128
    .local v9, "digits":[C
    const/16 v21, 0x0

    .line 1129
    .local v21, "nDigits":I
    const/4 v8, 0x0

    .line 1130
    .local v8, "decSeen":Z
    const/4 v7, 0x0

    .line 1131
    .local v7, "decPt":I
    const/16 v23, 0x0

    .line 1132
    .local v23, "nLeadZero":I
    const/16 v24, 0x0

    .line 1134
    .local v24, "nTrailZero":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 1135
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1193
    :cond_a
    :pswitch_3
    if-nez v21, :cond_b

    .line 1194
    sget-object v9, Ljava/lang/FloatingDecimal;->zero:[C

    .line 1195
    const/16 v21, 0x1

    .line 1196
    if-eqz v23, :cond_0

    .line 1209
    :cond_b
    if-eqz v8, :cond_15

    .line 1210
    sub-int v6, v7, v23

    .line 1218
    .local v6, "decExp":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v28, 0x65

    move/from16 v0, v28

    if-eq v4, v0, :cond_c

    const/16 v28, 0x45

    move/from16 v0, v28

    if-ne v4, v0, :cond_f

    .line 1219
    :cond_c
    const/4 v14, 0x1

    .line 1220
    .local v14, "expSign":I
    const/4 v15, 0x0

    .line 1222
    .local v15, "expVal":I
    const/4 v13, 0x0

    .line 1223
    .local v13, "expOverflow":Z
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    packed-switch v28, :pswitch_data_2

    .line 1230
    :goto_7
    :pswitch_4
    move/from16 v11, v16

    .local v11, "expAt":I
    move/from16 v17, v16

    .line 1232
    .end local v16    # "i":I
    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1221
    const v28, 0xccccccc

    .line 1233
    move/from16 v0, v28

    if-lt v15, v0, :cond_d

    .line 1236
    const/4 v13, 0x1

    .line 1238
    :cond_d
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 1252
    add-int/lit8 v16, v16, -0x1

    .line 1256
    :goto_9
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x144

    move/from16 v28, v0

    add-int v12, v28, v24

    .line 1257
    .local v12, "expLimit":I
    if-nez v13, :cond_e

    if-le v15, v12, :cond_16

    .line 1270
    :cond_e
    mul-int v6, v14, v12

    .line 1283
    :goto_a
    move/from16 v0, v16

    if-eq v0, v11, :cond_0

    .line 1290
    .end local v11    # "expAt":I
    .end local v12    # "expLimit":I
    .end local v13    # "expOverflow":Z
    .end local v14    # "expSign":I
    .end local v15    # "expVal":I
    :cond_f
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 1291
    add-int/lit8 v28, v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 1292
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x66

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1293
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x46

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1294
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x64

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1295
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x44

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1299
    :cond_10
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->isNegative:Z

    .line 1300
    move-object/from16 v0, p0

    iput v6, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    .line 1301
    move-object/from16 v0, p0

    iput-object v9, v0, Ljava/lang/FloatingDecimal;->digits:[C

    .line 1302
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/FloatingDecimal;->nDigits:I

    .line 1303
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->isExceptional:Z

    .line 1304
    return-object p0

    .line 1137
    .end local v6    # "decExp":I
    :pswitch_5
    if-lez v21, :cond_11

    .line 1138
    add-int/lit8 v24, v24, 0x1

    .line 1172
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 1140
    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    :pswitch_6
    move/from16 v22, v21

    .line 1152
    .end local v21    # "nDigits":I
    .local v22, "nDigits":I
    :goto_c
    if-lez v24, :cond_12

    .line 1153
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "nDigits":I
    .restart local v21    # "nDigits":I
    const/16 v28, 0x30

    aput-char v28, v9, v22

    .line 1154
    add-int/lit8 v24, v24, -0x1

    move/from16 v22, v21

    .end local v21    # "nDigits":I
    .restart local v22    # "nDigits":I
    goto :goto_c

    .line 1156
    :cond_12
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "nDigits":I
    .restart local v21    # "nDigits":I
    aput-char v4, v9, v22

    goto :goto_b

    .line 1159
    :pswitch_7
    if-eqz v8, :cond_13

    .line 1161
    new-instance v28, Ljava/lang/NumberFormatException;

    const-string/jumbo v29, "multiple points"

    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1163
    :cond_13
    move/from16 v7, v16

    .line 1164
    if-eqz v26, :cond_14

    .line 1165
    add-int/lit8 v7, v7, -0x1

    .line 1167
    :cond_14
    const/4 v8, 0x1

    .line 1168
    goto :goto_b

    .line 1212
    :cond_15
    add-int v6, v21, v24

    .restart local v6    # "decExp":I
    goto/16 :goto_6

    .line 1225
    .restart local v13    # "expOverflow":Z
    .restart local v14    # "expSign":I
    .restart local v15    # "expVal":I
    :pswitch_8
    const/4 v14, -0x1

    .line 1228
    :pswitch_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 1249
    .restart local v11    # "expAt":I
    :pswitch_a
    mul-int/lit8 v28, v15, 0xa

    add-int/lit8 v29, v4, -0x30

    add-int v15, v28, v29

    move/from16 v17, v16

    .line 1250
    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto/16 :goto_8

    .line 1274
    .end local v17    # "i":I
    .restart local v12    # "expLimit":I
    .restart local v16    # "i":I
    :cond_16
    mul-int v28, v14, v15

    add-int v6, v6, v28

    goto/16 :goto_a

    .end local v12    # "expLimit":I
    .end local v16    # "i":I
    .restart local v17    # "i":I
    :cond_17
    move/from16 v16, v17

    .end local v17    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_9

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1135
    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1223
    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_9
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 1238
    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method stickyRound(D)F
    .locals 9
    .param p1, "dval"    # D

    .prologue
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 265
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 266
    .local v2, "lbits":J
    and-long v0, v2, v6

    .line 267
    .local v0, "binexp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 270
    :cond_0
    double-to-float v4, p1

    return v4

    .line 272
    :cond_1
    iget v4, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 914
    sget-object v2, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 915
    .local v1, "result":[C
    invoke-direct {p0, v1}, Ljava/lang/FloatingDecimal;->getChars([C)I

    move-result v0

    .line 916
    .local v0, "i":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 900
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 901
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 902
    :cond_0
    iget-boolean v1, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 910
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1

    .line 905
    :cond_1
    const-string/jumbo v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    iget-object v1, p0, Ljava/lang/FloatingDecimal;->digits:[C

    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 907
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 908
    iget v1, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
