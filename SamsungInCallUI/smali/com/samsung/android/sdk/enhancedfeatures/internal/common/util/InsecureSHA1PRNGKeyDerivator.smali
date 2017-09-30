.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;


# static fields
.field private static final BYTES_OFFSET:I = 0x51

.field private static final COUNTER_BASE:I = 0x0

.field private static final DIGEST_LENGTH:I = 0x14

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final HASH_OFFSET:I = 0x52

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x80000000
        0x800000
        0x8000
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x28
        0x30
        0x38
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x8
        0x10
        0x18
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x18
        0x10
        0x8
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0xffffff
        0xffff
        0xff
    .end array-data
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    iput-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    iput-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    return-void
.end method

.method private static computeHash([I)V
    .locals 15

    const/16 v13, 0x52

    const/16 v12, 0x50

    const/16 v0, 0x3c

    const/16 v1, 0x28

    const/16 v2, 0x14

    aget v8, p0, v13

    const/16 v3, 0x53

    aget v7, p0, v3

    const/16 v3, 0x54

    aget v6, p0, v3

    const/16 v3, 0x55

    aget v5, p0, v3

    const/16 v3, 0x56

    aget v4, p0, v3

    const/16 v3, 0x10

    :goto_0
    if-ge v3, v12, :cond_0

    add-int/lit8 v9, v3, -0x3

    aget v9, p0, v9

    add-int/lit8 v10, v3, -0x8

    aget v10, p0, v10

    xor-int/2addr v9, v10

    add-int/lit8 v10, v3, -0xe

    aget v10, p0, v10

    xor-int/2addr v9, v10

    add-int/lit8 v10, v3, -0x10

    aget v10, p0, v10

    xor-int/2addr v9, v10

    shl-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v9, v9, 0x1f

    or-int/2addr v9, v10

    aput v9, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v14, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v14

    :goto_1
    if-ge v8, v2, :cond_1

    shl-int/lit8 v9, v7, 0x5

    ushr-int/lit8 v10, v7, 0x1b

    or-int/2addr v9, v10

    and-int v10, v6, v5

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    add-int/2addr v9, v10

    aget v10, p0, v8

    add-int/2addr v3, v10

    const v10, 0x5a827999

    add-int/2addr v3, v10

    add-int/2addr v9, v3

    shl-int/lit8 v3, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v3

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    goto :goto_1

    :cond_1
    move v14, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v14

    :goto_2
    if-ge v7, v1, :cond_2

    shl-int/lit8 v8, v6, 0x5

    ushr-int/lit8 v9, v6, 0x1b

    or-int/2addr v8, v9

    xor-int v9, v5, v4

    xor-int/2addr v9, v3

    add-int/2addr v8, v9

    aget v9, p0, v7

    add-int/2addr v2, v9

    const v9, 0x6ed9eba1

    add-int/2addr v2, v9

    add-int/2addr v8, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    goto :goto_2

    :cond_2
    move v14, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v14

    :goto_3
    if-ge v6, v0, :cond_3

    shl-int/lit8 v7, v5, 0x5

    ushr-int/lit8 v8, v5, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v3

    and-int v9, v4, v2

    or-int/2addr v8, v9

    and-int v9, v3, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v6

    add-int/2addr v1, v8

    const v8, -0x70e44324

    add-int/2addr v1, v8

    add-int/2addr v7, v1

    shl-int/lit8 v1, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v1

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v0, v12, :cond_4

    shl-int/lit8 v6, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v6, v7

    xor-int v7, v4, v3

    xor-int/2addr v7, v2

    add-int/2addr v6, v7

    aget v7, p0, v0

    add-int/2addr v1, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v1, v7

    add-int/2addr v6, v1

    shl-int/lit8 v1, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    move v4, v5

    move v5, v6

    move v14, v1

    move v1, v2

    move v2, v3

    move v3, v14

    goto :goto_4

    :cond_4
    aget v0, p0, v13

    add-int/2addr v0, v5

    aput v0, p0, v13

    const/16 v0, 0x53

    aget v5, p0, v0

    add-int/2addr v4, v5

    aput v4, p0, v0

    const/16 v0, 0x54

    aget v4, p0, v0

    add-int/2addr v3, v4

    aput v3, p0, v0

    const/16 v0, 0x55

    aget v3, p0, v0

    add-int/2addr v2, v3

    aput v2, p0, v0

    const/16 v0, 0x56

    aget v2, p0, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method static deriveInsecureKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->setSeed([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes([B)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized nextBytes([B)V
    .locals 13

    const/16 v2, 0x14

    const/4 v12, 0x5

    const/4 v3, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x51

    aget v0, v0, v1

    if-nez v0, :cond_1

    move v5, v3

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No seed supplied!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x51

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x2

    move v5, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x52

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, 0x3

    :goto_1
    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v4, 0x0

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/4 v4, 0x3

    shl-long/2addr v0, v4

    const-wide/16 v6, 0x40

    add-long/2addr v0, v6

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v6, 0x51

    aget v4, v4, v6

    const/16 v6, 0x30

    if-ge v4, v6, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v6, 0xe

    const/16 v7, 0x20

    ushr-long v8, v0, v7

    long-to-int v7, v8

    aput v7, v4, v6

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v6, 0xf

    const-wide/16 v8, -0x1

    and-long/2addr v0, v8

    long-to-int v0, v0

    aput v0, v4, v6

    :goto_2
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v6, 0x13

    const/16 v7, 0x20

    ushr-long v8, v0, v7

    long-to-int v7, v8

    aput v7, v4, v6

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v6, 0x14

    const-wide/16 v8, -0x1

    and-long/2addr v0, v8

    long-to-int v0, v0

    aput v0, v4, v6

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v0, v0, 0x14

    array-length v4, p1

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_b

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v0, v0, 0x14

    :goto_4
    if-lez v0, :cond_10

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    iget v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    invoke-static {v4, v6, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v0, v3

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v4, 0x51

    aget v1, v1, v4

    and-int/lit8 v6, v1, 0x3

    :cond_8
    if-nez v6, :cond_c

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v4, v8

    aput v4, v1, v5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v4, v5, 0x1

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v1, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v4, v5, 0x2

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v4

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v4, 0x51

    aget v1, v1, v4

    const/16 v4, 0x30

    if-le v1, v4, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v4, 0x5

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v8, 0x10

    aget v7, v7, v8

    aput v7, v1, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v4, 0x6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v8, 0x11

    aget v7, v7, v8

    aput v7, v1, v4

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v4, 0x51

    aget v1, v1, v4

    const/16 v4, 0x30

    if-le v1, v4, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v8, 0x15

    const/16 v9, 0x10

    invoke-static {v1, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v4, 0x5

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v1, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v4, 0x15

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v1, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    move v1, v3

    move v4, v3

    :goto_7
    if-ge v4, v12, :cond_d

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v8, v4, 0x52

    aget v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    ushr-int/lit8 v9, v7, 0x18

    int-to-byte v9, v9

    aput-byte v9, v8, v1

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v9, v1, 0x1

    ushr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v9, v1, 0x2

    ushr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v9, v1, 0x3

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    array-length v0, p1

    sub-int/2addr v0, v3

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v4, v1, v5

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    aget v7, v7, v6

    ushr-long/2addr v8, v7

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    aget v7, v7, v6

    int-to-long v10, v7

    and-long/2addr v8, v10

    long-to-int v7, v8

    or-int/2addr v4, v7

    aput v4, v1, v5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v4, v5, 0x1

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    aget v7, v7, v6

    ushr-long/2addr v8, v7

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v1, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v4, v5, 0x2

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    aget v7, v7, v6

    shl-long/2addr v8, v7

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v7, v7, v6

    int-to-long v10, v7

    or-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v1, v4

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    array-length v1, p1

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_f

    move v1, v2

    :goto_8
    if-lez v1, :cond_e

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    const/4 v7, 0x0

    invoke-static {v4, v7, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_e
    array-length v1, p1

    if-lt v0, v1, :cond_8

    goto/16 :goto_3

    :cond_f
    array-length v1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v1, v0

    goto :goto_8

    :cond_10
    move v0, v3

    goto/16 :goto_5
.end method

.method private setSeed([B)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->state:I

    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->updateSeed([B)V

    :cond_2
    return-void
.end method

.method private static updateHash([I[BII)V
    .locals 8

    const/16 v4, 0x51

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v1, 0x0

    aget v3, p0, v4

    shr-int/lit8 v0, v3, 0x2

    and-int/lit8 v2, v3, 0x3

    add-int/2addr v3, p3

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x3f

    aput v3, p0, v4

    if-eqz v2, :cond_3

    :goto_0
    if-gt p2, p3, :cond_0

    if-ge v2, v6, :cond_0

    aget v3, p0, v0

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v5, v2, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p0, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move v0, v1

    :cond_1
    if-le p2, p3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    aput v0, p0, v3

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v7, :cond_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move v0, v1

    goto :goto_3

    :cond_5
    sub-int v0, p3, p2

    add-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :cond_6
    aput v0, p0, v3

    goto :goto_1
.end method

.method private updateSeed([B)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->updateHash([I[BII)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    return-void
.end method
