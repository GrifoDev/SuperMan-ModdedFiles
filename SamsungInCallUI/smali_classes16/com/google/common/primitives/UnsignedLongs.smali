.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L

.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, -0x1

    const/16 v3, 0x25

    new-array v2, v3, [J

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000000000000000"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 6

    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v2

    :try_start_0
    iget-object v3, v2, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v4, v2, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static divide(JJ)J
    .locals 8
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    cmp-long v5, p2, v6

    if-gez v5, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    move-wide v4, v6

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v5, p0, v6

    if-ltz v5, :cond_2

    div-long v4, p0, p2

    goto :goto_0

    :cond_2
    ushr-long v6, p0, v4

    div-long/2addr v6, p2

    shl-long v0, v6, v4

    mul-long v6, v0, p2

    sub-long v2, p0, v6

    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v5

    if-ltz v5, :cond_3

    :goto_1
    int-to-long v4, v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, p1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 8
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v6, 0x0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    move-wide v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v6

    return-wide v6
.end method

.method public static varargs min([J)J
    .locals 8
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v6, 0x0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    move-wide v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v6

    return-wide v6
.end method

.method private static overflowInParse(JII)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .locals 10

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v6, "empty string"

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x2

    if-lt p1, v3, :cond_1

    const/16 v3, 0x24

    if-le p1, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal radix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    sget-object v3, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    aget v3, v3, p1

    add-int/lit8 v1, v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    if-le v2, v1, :cond_4

    invoke-static {v4, v5, v0, p1}, Lcom/google/common/primitives/UnsignedLongs;->overflowInParse(JII)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too large for unsigned long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    int-to-long v6, p1

    mul-long/2addr v6, v4

    int-to-long v8, v0

    add-long v4, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-wide v4
.end method

.method public static remainder(JJ)J
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    :cond_1
    cmp-long v6, p0, v4

    if-ltz v6, :cond_2

    rem-long/2addr p0, p2

    goto :goto_0

    :cond_2
    ushr-long v6, p0, v8

    div-long/2addr v6, p2

    shl-long v0, v6, v8

    mul-long v6, v0, p2

    sub-long v2, p0, v6

    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v6

    if-ltz v6, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v4

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 12
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v6, 0x2

    if-lt p2, v6, :cond_0

    const/16 v6, 0x24

    if-gt p2, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string v7, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-nez v6, :cond_1

    const-string v6, "0"

    :goto_1
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    new-array v0, v6, [C

    array-length v1, v0

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_2

    int-to-long v6, p2

    invoke-static {p0, p1, v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v2

    int-to-long v6, p2

    mul-long/2addr v6, v2

    sub-long v4, p0, v6

    add-int/lit8 v1, v1, -0x1

    long-to-int v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v0, v1

    move-wide p0, v2

    :cond_2
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-lez v6, :cond_3

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, p2

    rem-long v6, p0, v6

    long-to-int v6, v6

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v0, v1

    int-to-long v6, p2

    div-long/2addr p0, v6

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    sub-int/2addr v7, v1

    invoke-direct {v6, v0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1
.end method
