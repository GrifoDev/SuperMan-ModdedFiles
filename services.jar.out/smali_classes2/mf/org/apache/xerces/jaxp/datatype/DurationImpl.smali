.class Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;
.super Lmf/javax/xml/datatype/Duration;
.source "DurationImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Lmf/javax/xml/datatype/DatatypeConstants$Field;

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v4

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v3

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v5

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v6

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    new-array v0, v7, [Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const-string/jumbo v1, "1696-09-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "1697-02-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "1903-03-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "1903-07-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/math/BigDecimal;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v4

    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 11

    const-wide/16 v8, 0x18

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    cmp-long v0, p1, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v2

    :goto_1
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const-wide/32 v4, 0xea60

    rem-long v4, p1, v4

    if-nez v0, :cond_5

    :goto_2
    int-to-long v0, v2

    add-long/2addr v0, v4

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const-wide/32 v0, 0xea60

    div-long v4, p1, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    div-long v0, v4, v8

    cmp-long v2, v0, v6

    if-nez v2, :cond_8

    :goto_5
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    cmp-long v0, p1, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_6
    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    const-wide/16 v4, 0x1

    add-long/2addr p1, v4

    move v0, v1

    :goto_7
    const-wide/16 v4, -0x1

    mul-long/2addr p1, v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_6

    :cond_3
    move v0, v2

    goto :goto_7

    :cond_4
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x3c

    rem-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    :cond_7
    rem-long v0, v4, v8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_5
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    new-array v5, v0, [I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v5, v0

    const/4 v0, 0x0

    aget v0, v5, v0

    if-ne v6, v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    aget v1, v5, v1

    if-ne v6, v1, :cond_8

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v8, v2, [I

    :goto_1
    const/4 v2, 0x0

    aget v2, v5, v2

    if-ne v6, v2, :cond_a

    :cond_2
    :goto_2
    const/4 v2, 0x0

    aget v2, v5, v2

    if-ne v6, v2, :cond_b

    move v2, v3

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    new-array v10, v4, [I

    :goto_4
    const/4 v4, 0x0

    aget v4, v5, v4

    if-ne v6, v4, :cond_e

    :cond_3
    :goto_5
    if-nez v2, :cond_f

    :cond_4
    const/4 v2, 0x0

    aget v2, v5, v2

    if-ne v6, v2, :cond_10

    if-eqz v1, :cond_11

    :cond_5
    const-string/jumbo v2, "YMD"

    invoke-static {p1, v7, v8, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const-string/jumbo v1, "HMS"

    invoke-static {p1, v9, v10, v3, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const/4 v1, 0x2

    aget-object v1, v7, v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, v9, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const/4 v1, 0x2

    aget-object v1, v9, v1

    const/4 v2, 0x2

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return-void

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    aget v1, v5, v1

    const/4 v2, 0x0

    add-int/lit8 v4, v1, 0x1

    aput v4, v5, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    aget v2, v5, v2

    aput v2, v8, v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    move v1, v2

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    aput v4, v5, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    aget v4, v5, v4

    aput v4, v10, v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {p1, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    move v3, v4

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x0

    aget v4, v5, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_5

    :cond_f
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(ZIIIIII)V
    .locals 8

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {p6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v6

    if-nez p7, :cond_0

    const/4 v7, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-void

    :cond_0
    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0
.end method

.method protected constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iput-object p4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iput-object p5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iput-object p6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iput-object p7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-eqz p2, :cond_1

    :cond_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p4, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p6, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p7, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    return-void

    :cond_1
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AllFieldsNull"

    invoke-static {v2, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 8

    const/4 v4, 0x0

    :cond_0
    move v3, p1

    move v2, v4

    move v0, v4

    :goto_0
    if-ge v3, p2, :cond_4

    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    mul-int/2addr v1, v2

    if-ltz v1, :cond_1

    :goto_1
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-gtz v5, :cond_2

    :goto_3
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p0, v6

    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    aput-object v6, p0, v5

    aget-object v5, p0, v3

    sget-object v6, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, p0, v3

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3

    :cond_3
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_0

    return-void
.end method

.method private calcSignum(Z)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_9

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_b

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    if-nez p1, :cond_c

    const/4 v0, -0x1

    return v0

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v2

    if-eq v2, v3, :cond_0

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v2

    if-eq v2, v3, :cond_1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v2

    if-eq v2, v3, :cond_2

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    return v0

    :cond_0
    return v3

    :cond_1
    return v3

    :cond_2
    return v3
.end method

.method private compareResults(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p1, p2, :cond_1

    return p1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    return-object v0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method private getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-le v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isDigitOrPeriod(C)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    return v1
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    :goto_1
    if-ge v3, v1, :cond_2

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v1, p1, v0

    aput-object v1, p1, v2

    aget v1, p2, v0

    aput v1, p2, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_4

    aput-object v4, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    aget v0, p1, v3

    :goto_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    aget v1, p1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NegativeField"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NegativeField"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-eqz v3, :cond_1

    if-gtz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v4, v3, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v4, "0."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    neg-int v4, v3

    if-ge v1, v4, :cond_3

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 14

    const/4 v13, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x6

    new-array v10, v0, [Ljava/math/BigDecimal;

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v6

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v8

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v5

    const/4 v1, 0x3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v1

    const/4 v1, 0x4

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v10, v13

    invoke-static {v10, v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    const/4 v0, 0x6

    invoke-static {v10, v5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    move v1, v6

    move v7, v6

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_2

    aget-object v0, v10, v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    mul-int/2addr v0, v7

    if-ltz v0, :cond_0

    if-eqz v7, :cond_1

    move v0, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    aget-object v0, v10, v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    goto :goto_1

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    if-gez v7, :cond_9

    move v1, v6

    :goto_2
    aget-object v2, v10, v6

    invoke-static {v2, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_a

    :cond_3
    move v2, v6

    :goto_3
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, v10, v8

    invoke-static {v3, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_b

    :cond_4
    move v3, v6

    :goto_4
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, v10, v5

    invoke-static {v4, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_c

    :cond_5
    move v4, v6

    :goto_5
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v10, v5

    invoke-static {v5, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_d

    :cond_6
    move v5, v6

    :goto_6
    invoke-static {v11, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v11, 0x4

    aget-object v11, v10, v11

    invoke-static {v11, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    sget-object v12, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v12}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-eqz v12, :cond_e

    :goto_7
    move v8, v6

    :cond_7
    invoke-static {v11, v8}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v8, v10, v13

    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v8

    if-eqz v8, :cond_f

    :cond_8
    aget-object v8, v10, v13

    invoke-static {v8, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    :goto_8
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_9
    move v1, v8

    goto :goto_2

    :cond_a
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v8

    goto :goto_3

    :cond_b
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_c
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v8

    goto :goto_5

    :cond_d
    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_6

    move v5, v8

    goto :goto_6

    :cond_e
    sget-object v12, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v12}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_7

    :cond_f
    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_8

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v7, v9

    goto :goto_8
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xa

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xd

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    const/16 v1, 0xe

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public compare(Lmf/javax/xml/datatype/Duration;)I
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v6, 0x7fffffff

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_d

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_e

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_f

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_10

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_11

    :cond_5
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_12

    :cond_6
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_13

    :cond_7
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_14

    :cond_8
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_15

    :cond_9
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_16

    :cond_a
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    if-nez v0, :cond_17

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_18

    :cond_b
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b2

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v12, v1}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v13, v1}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v5, Ljava/util/GregorianCalendar;

    const/16 v6, 0x7b2

    move v7, v2

    move v8, v2

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getYears()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getMonths()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v5, v12, v1}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getDays()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v5, v13, v1}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xb

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getHours()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xc

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getMinutes()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xd

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSeconds()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0, p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I

    move-result v0

    return v0

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_6

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_7

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_8

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_9

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_a

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v3, v2, :cond_b

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_19
    return v4
.end method

.method public getDays()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_4

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_5

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_6

    const-string/jumbo v0, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "UnknownField"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "FieldCannotBeNull"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    return-object v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-object v0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    return-object v0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    return-object v0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSign()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 4

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_5

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_7

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_9

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_b

    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "UnknownField"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "FieldCannotBeNull"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    return v5

    :cond_2
    return v6

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_4

    return v5

    :cond_4
    return v6

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    return v5

    :cond_6
    return v6

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_8

    return v5

    :cond_8
    return v6

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_a

    return v5

    :cond_a
    return v6

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_c

    return v5

    :cond_c
    return v6
.end method

.method public multiply(I)Lmf/javax/xml/datatype/Duration;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
    .locals 13

    const/4 v12, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v1, 0x6

    new-array v9, v1, [Ljava/math/BigDecimal;

    move v1, v6

    :goto_0
    if-ge v1, v12, :cond_2

    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v9, v1

    aget-object v4, v9, v1

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    if-eq v1, v7, :cond_0

    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_4

    aput-object v0, v9, v12

    :goto_2
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    if-gez v1, :cond_5

    move v1, v6

    :goto_3
    aget-object v3, v9, v6

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    move v2, v6

    :goto_4
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v4, v9, v7

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v3, :cond_7

    move v3, v6

    :goto_5
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v5, v9, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v4, :cond_8

    move v4, v6

    :goto_6
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v10, v9, v5

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v5, :cond_9

    move v5, v6

    :goto_7
    invoke-static {v10, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v10, 0x4

    aget-object v10, v9, v10

    iget-object v11, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v11, :cond_a

    :goto_8
    invoke-static {v10, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v7, v9, v12

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_3
    aget-object v7, v9, v12

    :goto_9
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v9, v12

    goto :goto_2

    :cond_5
    move v1, v7

    goto :goto_3

    :cond_6
    move v2, v7

    goto :goto_4

    :cond_7
    move v3, v7

    goto :goto_5

    :cond_8
    move v4, v7

    goto :goto_6

    :cond_9
    move v5, v7

    goto :goto_7

    :cond_a
    move v6, v7

    goto :goto_8

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_9
.end method

.method public negate()Lmf/javax/xml/datatype/Duration;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-lez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Lmf/javax/xml/datatype/Duration;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v4

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v5

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v5

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    if-gez v4, :cond_0

    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public signum()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public subtract(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->negate()Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x4d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-ltz v1, :cond_1

    :goto_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v1, :cond_3

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    :cond_0
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v1, :cond_6

    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_7

    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_8

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_0

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method
