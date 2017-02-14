.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/lang/String;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v0, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$CaseInsensitiveComparator;)V

    sput-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(II[C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([CII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private native fastSubstring(II)Ljava/lang/String;
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    const/4 v6, -0x1

    const/4 v8, 0x0

    iget v7, p0, Ljava/lang/String;->count:I

    if-lt p2, v7, :cond_1

    iget v7, p1, Ljava/lang/String;->count:I

    if-nez v7, :cond_0

    iget v6, p0, Ljava/lang/String;->count:I

    :cond_0
    return v6

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    iget v7, p1, Ljava/lang/String;->count:I

    if-nez v7, :cond_3

    return p2

    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v7, p0, Ljava/lang/String;->count:I

    iget v8, p1, Ljava/lang/String;->count:I

    sub-int v5, v7, v8

    move v2, p2

    :goto_0
    if-gt v2, v5, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v1, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v1, :cond_4

    :cond_5
    if-gt v2, v5, :cond_7

    add-int/lit8 v3, v2, 0x1

    iget v7, p1, Ljava/lang/String;->count:I

    add-int/2addr v7, v3

    add-int/lit8 v0, v7, -0x1

    const/4 v4, 0x1

    :goto_1
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-ne v3, v0, :cond_7

    return v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v6
.end method

.method static indexOf([CII[CIII)I
    .locals 9

    const/4 v6, -0x1

    if-lt p6, p2, :cond_1

    if-nez p5, :cond_0

    :goto_0
    return p2

    :cond_0
    move p2, v6

    goto :goto_0

    :cond_1
    if-gez p6, :cond_2

    const/4 p6, 0x0

    :cond_2
    if-nez p5, :cond_3

    return p6

    :cond_3
    aget-char v1, p3, p4

    sub-int v7, p2, p5

    add-int v5, p1, v7

    add-int v2, p1, p6

    :goto_1
    if-gt v2, v5, :cond_8

    aget-char v7, p0, v2

    if-eq v7, v1, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_5

    aget-char v7, p0, v2

    if-ne v7, v1, :cond_4

    :cond_5
    if-gt v2, v5, :cond_7

    add-int/lit8 v3, v2, 0x1

    add-int v7, v3, p5

    add-int/lit8 v0, v7, -0x1

    add-int/lit8 v4, p4, 0x1

    :goto_2
    if-ge v3, v0, :cond_6

    aget-char v7, p0, v3

    aget-char v8, p3, v4

    if-ne v7, v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-ne v3, v0, :cond_7

    sub-int v6, v2, p1

    return v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v6
.end method

.method private indexOfSupplementary(II)I
    .locals 5

    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/lit8 v3, v4, -0x1

    move v1, p2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 13

    const/4 v12, -0x1

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    sub-int v6, v10, v11

    if-gez p2, :cond_0

    return v12

    :cond_0
    if-le p2, v6, :cond_1

    move p2, v6

    :cond_1
    iget v10, p1, Ljava/lang/String;->count:I

    if-nez v10, :cond_2

    return p2

    :cond_2
    iget v10, p1, Ljava/lang/String;->count:I

    add-int/lit8 v9, v10, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget v10, p1, Ljava/lang/String;->count:I

    add-int/lit8 v5, v10, -0x1

    add-int v0, v5, p2

    :goto_0
    if-lt v0, v5, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-ge v0, v5, :cond_4

    return v12

    :cond_4
    add-int/lit8 v1, v0, -0x1

    iget v10, p1, Ljava/lang/String;->count:I

    add-int/lit8 v10, v10, -0x1

    sub-int v7, v1, v10

    add-int/lit8 v3, v9, -0x1

    move v4, v3

    move v2, v1

    :goto_1
    if-le v2, v7, :cond_6

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    move v4, v3

    move v2, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v7, 0x1

    return v10
.end method

.method static lastIndexOf([CII[CIII)I
    .locals 13

    sub-int v7, p2, p5

    if-gez p6, :cond_0

    const/4 v11, -0x1

    return v11

    :cond_0
    move/from16 v0, p6

    if-le v0, v7, :cond_1

    move/from16 p6, v7

    :cond_1
    if-nez p5, :cond_2

    return p6

    :cond_2
    add-int v11, p4, p5

    add-int/lit8 v10, v11, -0x1

    aget-char v9, p3, v10

    add-int v11, p1, p5

    add-int/lit8 v6, v11, -0x1

    add-int v1, v6, p6

    :goto_0
    if-lt v1, v6, :cond_3

    aget-char v11, p0, v1

    if-eq v11, v9, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    if-ge v1, v6, :cond_4

    const/4 v11, -0x1

    return v11

    :cond_4
    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v11, p5, -0x1

    sub-int v8, v2, v11

    add-int/lit8 v4, v10, -0x1

    move v5, v4

    move v3, v2

    :goto_1
    if-le v3, v8, :cond_6

    add-int/lit8 v2, v3, -0x1

    aget-char v11, p0, v3

    add-int/lit8 v4, v5, -0x1

    aget-char v12, p3, v5

    if-eq v11, v12, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move v5, v4

    move v3, v2

    goto :goto_1

    :cond_6
    sub-int v11, v8, p1

    add-int/lit8 v11, v11, 0x1

    return v11
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [C

    aput-char p0, v0, v1

    invoke-static {v1, v2, v0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native charAt(I)C
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Ljava/lang/String;->count:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/lang/String;->count:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public codePointAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    iget v1, p0, Ljava/lang/String;->count:I

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native concat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    return v6

    :cond_0
    instance-of v4, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v4, :cond_3

    check-cast p1, Ljava/lang/AbstractStringBuilder;

    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getValue()[C

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/String;->count:I

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return v7

    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v7

    :cond_4
    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/String;->count:I

    move v2, v1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_5

    return v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    return v7
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Ljava/lang/String;->count:I

    iget v4, v0, Ljava/lang/String;->count:I

    if-ne v2, v4, :cond_3

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v2, v3, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    return v7

    :cond_3
    return v6
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Ljava/lang/String;->count:I

    iget v3, p0, Ljava/lang/String;->count:I

    if-ne v0, v3, :cond_1

    iget v5, p0, Ljava/lang/String;->count:I

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getBytes(II[BI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-gez p1, :cond_0

    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_0
    iget v5, p0, Ljava/lang/String;->count:I

    if-le p2, v5, :cond_1

    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v6, p2, p1

    invoke-direct {v5, p0, v6}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_2
    move v2, p4

    move v4, p2

    move v0, p1

    move v1, v0

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_3

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    move v1, v0

    move v3, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getBytes()[B
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "charset == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "UTF-16BE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    move-result-object v1

    return-object v1

    :cond_4
    invoke-static {p1, p0}, Ljava/lang/StringCoding;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getChars(II[CI)V
    .locals 4

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    if-le p2, v1, :cond_2

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    sub-int v0, p2, p1

    if-ge p2, p1, :cond_3

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    :cond_3
    if-gez p4, :cond_4

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dstBegin < 0. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    array-length v1, p3

    if-le p4, v1, :cond_5

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dstBegin > dst.length. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    array-length v1, p3

    sub-int/2addr v1, p4

    if-le v0, v1, :cond_6

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "n > dst.length - dstBegin. n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    return-void
.end method

.method native getCharsNoCheck(II[CI)V
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Ljava/lang/String;->hash:I

    if-nez v0, :cond_1

    iget v2, p0, Ljava/lang/String;->count:I

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Ljava/lang/String;->hash:I

    :cond_1
    return v0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 4

    const/4 v3, -0x1

    iget v1, p0, Ljava/lang/String;->count:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_4

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_2

    return v0

    :cond_1
    if-lt p2, v1, :cond_0

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v2

    return v2
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1

    iget v0, p0, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .locals 2

    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    iget v1, p0, Ljava/lang/String;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1

    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Ljava/lang/String;->count:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 14

    move v5, p1

    move/from16 v3, p3

    if-ltz p3, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v7, 0x0

    return v7

    :cond_1
    int-to-long v8, p1

    iget v7, p0, Ljava/lang/String;->count:I

    int-to-long v10, v7

    move/from16 v0, p4

    int-to-long v12, v0

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    move/from16 v0, p3

    int-to-long v8, v0

    move-object/from16 v0, p2

    iget v7, v0, Ljava/lang/String;->count:I

    int-to-long v10, v7

    move/from16 v0, p4

    int-to-long v12, v0

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    move v4, v3

    move v6, v5

    move/from16 v2, p4

    :goto_0
    add-int/lit8 p4, v2, -0x1

    if-lez v2, :cond_3

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    return v7

    :cond_2
    move v4, v3

    move v6, v5

    move/from16 v2, p4

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    return v7
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 18

    move/from16 v7, p2

    move/from16 v5, p4

    if-ltz p4, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v11, 0x0

    return v11

    :cond_1
    move/from16 v0, p2

    int-to-long v12, v0

    move-object/from16 v0, p0

    iget v11, v0, Ljava/lang/String;->count:I

    int-to-long v14, v11

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-gtz v11, :cond_0

    move/from16 v0, p4

    int-to-long v12, v0

    move-object/from16 v0, p3

    iget v11, v0, Ljava/lang/String;->count:I

    int-to-long v14, v11

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-gtz v11, :cond_0

    move v6, v5

    move v8, v7

    move/from16 v4, p5

    :goto_0
    add-int/lit8 p5, v4, -0x1

    if-lez v4, :cond_5

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    move v6, v5

    move v8, v7

    move/from16 v4, p5

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    if-ne v9, v10, :cond_3

    move v6, v5

    move v8, v7

    move/from16 v4, p5

    goto :goto_0

    :cond_3
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    if-ne v11, v12, :cond_4

    move v6, v5

    move v8, v7

    move/from16 v4, p5

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    return v11

    :cond_5
    const/4 v11, 0x1

    return v11
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 3

    move-object v1, p0

    if-eq p1, p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    if-ne v1, p0, :cond_0

    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->setCharAt(IC)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "target == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "replacement == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Ljava/lang/String;->count:I

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    iget v7, p0, Ljava/lang/String;->count:I

    add-int/2addr v6, v7

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v6, p0, Ljava/lang/String;->count:I

    if-ge v1, v6, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-static {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    if-eqz v4, :cond_6

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-virtual {v4, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Ljava/lang/String;->count:I

    add-int v2, v0, v6

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native setCharAt(IC)V
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    invoke-static {p1, p0, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 8

    const/4 v7, 0x0

    move v3, p2

    const/4 v1, 0x0

    iget v0, p1, Ljava/lang/String;->count:I

    if-ltz p2, :cond_0

    iget v5, p0, Ljava/lang/String;->count:I

    sub-int/2addr v5, v0

    if-le p2, v5, :cond_1

    :cond_0
    return v7

    :cond_1
    move v2, v1

    move v4, v3

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    return v7

    :cond_2
    move v2, v1

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    iget v1, p0, Ljava/lang/String;->count:I

    sub-int v0, v1, p1

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-object p0

    :cond_2
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    sub-int v0, p2, p1

    iget v1, p0, Ljava/lang/String;->count:I

    if-gt p2, v1, :cond_1

    if-gez v0, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    :cond_2
    if-nez p1, :cond_3

    iget v1, p0, Ljava/lang/String;->count:I

    if-ne p2, v1, :cond_3

    :goto_0
    return-object p0

    :cond_3
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public native toCharArray()[C
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    iget v0, p0, Ljava/lang/String;->count:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_2

    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
