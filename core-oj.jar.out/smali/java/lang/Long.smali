.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Long$LongCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [J

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/lang/Long;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Long;->value:J

    return-void
.end method

.method public static bitCount(J)I
    .locals 6

    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    sub-long/2addr p0, v0

    and-long v0, p0, v4

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    add-long p0, v0, v2

    const/4 v0, 0x4

    ushr-long v0, p0, v0

    add-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long p0, v0, v2

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static compare(JJ)I
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Zero length string"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5

    const/4 v4, 0x1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "0X"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0x10

    :cond_3
    :goto_1
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "+"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Sign character in wrong position"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    const/16 v7, 0x2b

    if-ne v2, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "#"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x10

    goto :goto_1

    :cond_7
    const-string/jumbo v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_1

    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v6

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_9
    :goto_2
    return-object v6

    :catch_0
    move-exception v1

    if-eqz v4, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static getChars(JI[C)V
    .locals 12

    move v0, p2

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    const/16 v6, 0x2d

    neg-long p0, p0

    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    move-wide p0, v2

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    :cond_1
    long-to-int v1, p0

    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    div-int/lit8 v4, v1, 0x64

    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    move v1, v4

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    move v1, v4

    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    :cond_3
    return-void
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v2

    :cond_0
    return-object p1
.end method

.method public static hashCode(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static highestOneBit(J)J
    .locals 4

    const/4 v2, 0x1

    shr-long v0, p0, v2

    or-long/2addr p0, v0

    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static lowestOneBit(J)J
    .locals 2

    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static max(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x40

    return v2

    :cond_0
    const/4 v0, 0x1

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v1, v2

    if-nez v1, :cond_1

    const/16 v0, 0x21

    long-to-int v1, p0

    :cond_1
    ushr-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x10

    :cond_2
    ushr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x8

    :cond_3
    ushr-int/lit8 v2, v1, 0x1c

    if-nez v2, :cond_4

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 v1, v1, 0x4

    :cond_4
    ushr-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x2

    :cond_5
    ushr-int/lit8 v2, v1, 0x1f

    sub-int/2addr v0, v2

    return v0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 6

    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_0

    const/16 v3, 0x40

    return v3

    :cond_0
    const/16 v0, 0x3f

    long-to-int v2, p0

    if-eqz v2, :cond_5

    const/16 v0, 0x1f

    move v1, v2

    :goto_0
    shl-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x10

    move v1, v2

    :cond_1
    shl-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    :cond_2
    shl-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x4

    move v1, v2

    :cond_3
    shl-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    :cond_4
    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    sub-int v3, v0, v3

    return v3

    :cond_5
    const/16 v3, 0x20

    ushr-long v4, p0, v3

    long-to-int v1, v4

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v14, Ljava/lang/NumberFormatException;

    const-string/jumbo v15, "null"

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ge v0, v14, :cond_1

    new-instance v14, Ljava/lang/NumberFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radix "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " less than Character.MIN_RADIX"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    const/16 v14, 0x24

    move/from16 v0, p1

    if-le v0, v14, :cond_2

    new-instance v14, Ljava/lang/NumberFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radix "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " greater than Character.MAX_RADIX"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v6, :cond_a

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v14, 0x30

    if-ge v3, v14, :cond_6

    const/16 v14, 0x2d

    if-ne v3, v14, :cond_4

    const/4 v7, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    :cond_3
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_4
    const/16 v14, 0x2b

    if-eq v3, v14, :cond_3

    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_5
    const/4 v4, 0x1

    :cond_6
    move/from16 v0, p1

    int-to-long v14, v0

    div-long v10, v8, v14

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_b

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_7

    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_7
    cmp-long v14, v12, v10

    if-gez v14, :cond_8

    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_8
    move/from16 v0, p1

    int-to-long v14, v0

    mul-long/2addr v12, v14

    int-to-long v14, v2

    add-long/2addr v14, v8

    cmp-long v14, v12, v14

    if-gez v14, :cond_9

    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_9
    int-to-long v14, v2

    sub-long/2addr v12, v14

    move v5, v4

    goto :goto_0

    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    :cond_b
    if-eqz v7, :cond_c

    :goto_1
    return-wide v12

    :cond_c
    neg-long v12, v12

    goto :goto_1
.end method

.method public static reverse(J)J
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, p0

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, v4

    or-long p0, v0, v2

    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, p0

    shl-long/2addr v0, v6

    ushr-long v2, p0, v6

    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, v4

    or-long p0, v0, v2

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, p0

    shl-long/2addr v0, v7

    ushr-long v2, p0, v7

    const-wide v4, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v4

    or-long p0, v0, v2

    const-wide v0, 0xff00ff00ff00ffL

    and-long/2addr v0, p0

    shl-long/2addr v0, v8

    ushr-long v2, p0, v8

    const-wide v4, 0xff00ff00ff00ffL

    and-long/2addr v2, v4

    or-long p0, v0, v2

    const/16 v0, 0x30

    shl-long v0, p0, v0

    const-wide v2, 0xffff0000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v9

    or-long/2addr v0, v2

    ushr-long v2, p0, v9

    const-wide v4, 0xffff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    or-long p0, v0, v2

    return-wide p0
.end method

.method public static reverseBytes(J)J
    .locals 10

    const-wide v8, 0xff00ff00ff00ffL

    const-wide v6, 0xffff0000L

    const/16 v5, 0x30

    const/16 v4, 0x10

    const/16 v2, 0x8

    and-long v0, p0, v8

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    and-long/2addr v2, v8

    or-long p0, v0, v2

    shl-long v0, p0, v5

    and-long v2, p0, v6

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    ushr-long v2, p0, v4

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    ushr-long v2, p0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 4

    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .locals 4

    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .locals 6

    const/16 v4, 0x3f

    shr-long v0, p0, v4

    neg-long v2, p0

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static stringSize(J)I
    .locals 8

    const/16 v6, 0x13

    const-wide/16 v2, 0xa

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v6, :cond_1

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    return v0

    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method public static sum(JJ)J
    .locals 2

    add-long v0, p0, p2

    return-wide v0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-9223372036854775808"

    return-object v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    neg-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    :goto_0
    new-array v0, v1, [C

    invoke-static {p0, p1, v1, v0}, Ljava/lang/Long;->getChars(JI[C)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->stringSize(J)I

    move-result v1

    goto :goto_0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x2

    if-lt p2, v4, :cond_0

    const/16 v4, 0x24

    if-le p2, v4, :cond_1

    :cond_0
    const/16 p2, 0xa

    :cond_1
    const/16 v4, 0xa

    if-ne p2, v4, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const/16 v4, 0x41

    new-array v0, v4, [C

    const/16 v1, 0x40

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    neg-long p0, p0

    move v2, v1

    :goto_1
    neg-int v4, p2

    int-to-long v4, v4

    cmp-long v4, p0, v4

    if-gtz v4, :cond_5

    add-int/lit8 v1, v2, -0x1

    sget-object v4, Ljava/lang/Integer;->digits:[C

    int-to-long v6, p2

    rem-long v6, p0, v6

    neg-long v6, v6

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    int-to-long v4, p2

    div-long/2addr p0, v4

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    sget-object v4, Ljava/lang/Integer;->digits:[C

    neg-long v6, p0

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    if-eqz v3, :cond_6

    add-int/lit8 v1, v2, -0x1

    const/16 v4, 0x2d

    aput-char v4, v0, v1

    :goto_2
    new-instance v4, Ljava/lang/String;

    rsub-int/lit8 v5, v1, 0x41

    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private static toUnsignedString(JI)Ljava/lang/String;
    .locals 8

    const/16 v5, 0x40

    new-array v0, v5, [C

    const/16 v1, 0x40

    const/4 v5, 0x1

    shl-int v4, v5, p2

    add-int/lit8 v5, v4, -0x1

    int-to-long v2, v5

    :cond_0
    add-int/lit8 v1, v1, -0x1

    sget-object v5, Ljava/lang/Integer;->digits:[C

    and-long v6, p0, v2

    long-to-int v6, v6

    aget-char v5, v5, v6

    aput-char v5, v0, v1

    ushr-long/2addr p0, p2

    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/String;

    rsub-int/lit8 v6, v1, 0x40

    invoke-direct {v5, v0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 4

    const/16 v0, 0x80

    const-wide/16 v2, -0x80

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide/16 v2, 0x7f

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    long-to-int v2, p0

    add-int/lit16 v2, v2, 0x80

    aget-object v1, v1, v2

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
