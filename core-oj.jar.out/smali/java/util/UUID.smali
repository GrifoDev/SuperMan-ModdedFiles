.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/UUID$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private final leastSigBits:J

.field private final mostSigBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/UUID;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    return-void
.end method

.method private constructor <init>([B)V
    .locals 12

    const/16 v11, 0x10

    const/16 v10, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    sget-boolean v1, Ljava/util/UUID;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p1

    if-ne v1, v11, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v6, "data must be 16 bytes in length"

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v10, :cond_2

    shl-long v6, v4, v10

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v4, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_2
    if-ge v0, v11, :cond_3

    shl-long v6, v2, v10

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v2, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput-wide v4, p0, Ljava/util/UUID;->mostSigBits:J

    iput-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    return-void
.end method

.method private static digits(JI)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x1

    mul-int/lit8 v2, p2, 0x4

    shl-long v0, v4, v2

    sub-long v2, v0, v4

    and-long/2addr v2, p0

    or-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x5

    const-string/jumbo v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid UUID string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shl-long/2addr v4, v9

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    shl-long/2addr v4, v9

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v2, v6

    new-instance v6, Ljava/util/UUID;

    invoke-direct {v6, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v6
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x6

    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    aget-byte v3, v1, v4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    aget-byte v3, v1, v4

    or-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    aget-byte v3, v1, v5

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    aget-byte v3, v1, v5

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/InternalError;

    const-string/jumbo v4, "MD5 not supported"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x6

    sget-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v2, v1, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aget-byte v2, v1, v4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public clockSequence()I
    .locals 4

    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v2, 0x3fff000000000000L    # 1.9375

    and-long/2addr v0, v2

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/UUID;

    if-eq v2, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/UUID;

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, v0, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, v0, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getLeastSignificantBits()J
    .locals 2

    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p0, Ljava/util/UUID;->leastSigBits:J

    xor-long v0, v2, v4

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v3, v0

    xor-int/2addr v2, v3

    return v2
.end method

.method public node()J
    .locals 4

    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public timestamp()J
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v2, 0xfff

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    ushr-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v1, 0x10

    shr-long/2addr v2, v1

    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v1, 0x30

    shr-long/2addr v2, v1

    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v1, 0xc

    invoke-static {v2, v3, v1}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public variant()I
    .locals 6

    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v4, 0x3e

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x40

    sub-long v2, v4, v2

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public version()I
    .locals 4

    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v2, 0xc

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
