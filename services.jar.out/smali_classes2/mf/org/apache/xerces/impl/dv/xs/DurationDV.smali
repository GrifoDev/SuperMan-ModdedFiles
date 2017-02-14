.class public Lmf/org/apache/xerces/impl/dv/xs/DurationDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "DurationDV.java"


# static fields
.field private static final DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

.field public static final DAYTIMEDURATION_TYPE:I = 0x2

.field public static final DURATION_TYPE:I = 0x0

.field public static final YEARMONTHDURATION_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v8, 0x5a

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v12, v0, [Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x6a0

    const/16 v2, 0x9

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v4

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x6a1

    const/4 v2, 0x2

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v3

    const/4 v13, 0x2

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x76f

    const/4 v2, 0x3

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v13

    const/4 v13, 0x3

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x76f

    const/4 v2, 0x7

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v13

    sput-object v12, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method

.method private addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 9

    const/16 v8, 0x3c

    const/16 v7, 0x18

    const/16 v6, 0xd

    const/4 v1, 0x1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->resetDateObj(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->modulo(III)I

    move-result v2

    iput v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(III)I

    move-result v0

    iget v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget-wide v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    mul-int/lit8 v4, v0, 0x3c

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iput-wide v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(II)I

    move-result v2

    invoke-virtual {p0, v0, v8, v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->mod(III)I

    move-result v0

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(II)I

    move-result v2

    invoke-virtual {p0, v0, v7, v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->mod(III)I

    move-result v0

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    :goto_0
    iget v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->maxDayInMonthFor(II)I

    move-result v0

    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-lt v2, v1, :cond_0

    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-gt v2, v0, :cond_1

    const/16 v0, 0x5a

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    return-object p3

    :cond_0
    iget v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v3, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->maxDayInMonthFor(II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 v0, -0x1

    :goto_1
    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->modulo(III)I

    move-result v2

    iput v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(III)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_1
    iget v2, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    sub-int v0, v2, v0

    iput v0, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    move v0, v1

    goto :goto_1
.end method

.method private compareResults(SSZ)S
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p1, p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_4

    :cond_1
    return p1

    :cond_2
    return v0

    :cond_3
    if-eqz p3, :cond_0

    return v0

    :cond_4
    if-nez p3, :cond_1

    if-nez p1, :cond_6

    :cond_5
    if-nez p1, :cond_7

    :goto_0
    return p2

    :cond_6
    if-eqz p2, :cond_5

    return v0

    :cond_7
    move p2, p1

    goto :goto_0
.end method


# virtual methods
.method protected compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v1, v2, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v1, v0, v6

    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v1, v2, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v1, v0, v7

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v1, v1, v6

    aget-object v2, v0, v6

    invoke-direct {p0, p1, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v2, v2, v6

    aget-object v3, v0, v7

    invoke-direct {p0, p2, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    if-eq v1, v5, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v2, v2, v7

    aget-object v3, v0, v6

    invoke-direct {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v3, v3, v7

    aget-object v4, v0, v7

    invoke-direct {p0, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v2

    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v1

    if-eq v1, v5, :cond_2

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v2, v2, v5

    aget-object v3, v0, v6

    invoke-direct {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v3, v3, v5

    aget-object v4, v0, v7

    invoke-direct {p0, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v2

    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v1

    if-eq v1, v5, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v2, v2, v8

    aget-object v3, v0, v6

    invoke-direct {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v3, v3, v8

    aget-object v0, v0, v7

    invoke-direct {p0, p2, v3, v0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    invoke-direct {p0, v1, v0, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v0

    return v0

    :cond_0
    return v6

    :cond_1
    return v5

    :cond_2
    return v5

    :cond_3
    return v5
.end method

.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x4d

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x1e

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-gez v0, :cond_2

    :cond_0
    :goto_0
    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v0, 0x50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v0, :cond_4

    move v0, v1

    :goto_2
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    mul-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_5

    move v0, v1

    :goto_3
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_6

    move v0, v1

    :goto_4
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_7

    move v0, v1

    :goto_5
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_8

    :goto_6
    int-to-double v0, v2

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v0, v4

    invoke-virtual {p0, v3, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->append2(Ljava/lang/StringBuffer;D)V

    const/16 v0, 0x53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_0

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v2, v1

    goto :goto_6
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "duration"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 14

    const/4 v1, 0x1

    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    move v7, v0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    if-eq v7, v1, :cond_1

    move v1, v2

    :cond_1
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ne v2, v9, :cond_3

    move-object v2, v8

    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ne v3, v9, :cond_4

    move-object v3, v8

    :goto_2
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ne v4, v9, :cond_5

    move-object v4, v8

    :goto_3
    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ne v5, v9, :cond_6

    move-object v5, v8

    :goto_4
    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ne v6, v9, :cond_7

    move-object v6, v8

    :goto_5
    iget-wide v10, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v12, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_8

    new-instance v8, Ljava/math/BigDecimal;

    int-to-double v10, v7

    iget-wide v12, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_6
    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_0

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_3
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/2addr v2, v7

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    mul-int/2addr v3, v7

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :cond_5
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v4, v7

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_3

    :cond_6
    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v5, v7

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_4

    :cond_7
    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v6, v7

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v7, v8

    goto :goto_6
.end method

.method protected parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x2d

    const/4 v5, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v8, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x50

    if-ne v6, v0, :cond_2

    :cond_0
    if-eq v6, v2, :cond_3

    move v0, v1

    :goto_0
    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eq v6, v2, :cond_4

    move v0, v3

    :goto_1
    iget v6, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eq v6, v2, :cond_6

    move v2, v3

    :goto_2
    const/16 v6, 0x54

    invoke-virtual {p0, p1, v0, v7, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v6

    if-eq v6, v5, :cond_7

    if-eq p2, v3, :cond_8

    :goto_3
    const/16 v9, 0x59

    invoke-virtual {p0, p1, v0, v6, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v9

    if-ne v9, v5, :cond_9

    :goto_4
    const/16 v9, 0x4d

    invoke-virtual {p0, p1, v0, v6, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v9

    if-ne v9, v5, :cond_b

    :goto_5
    const/16 v4, 0x44

    invoke-virtual {p0, p1, v0, v6, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_6
    if-eq v7, v6, :cond_f

    :cond_1
    if-ne v7, v6, :cond_10

    :goto_7
    if-eqz v0, :cond_16

    return-object v8

    :cond_2
    if-eq v6, v2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x50

    if-ne v0, v6, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    :cond_8
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_9
    if-eq p2, v4, :cond_a

    invoke-virtual {p0, p1, v0, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/lit8 v0, v9, 0x1

    move v1, v3

    goto :goto_4

    :cond_a
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_b
    if-eq p2, v4, :cond_c

    invoke-virtual {p0, p1, v0, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v0, v9, 0x1

    move v1, v3

    goto :goto_5

    :cond_c
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_d
    if-eq p2, v3, :cond_e

    invoke-virtual {p0, p1, v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v0, v3

    goto :goto_6

    :cond_e
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_f
    if-eq v1, v7, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x48

    invoke-virtual {p0, p1, v1, v7, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v5, :cond_12

    :goto_8
    const/16 v4, 0x4d

    invoke-virtual {p0, p1, v1, v7, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v5, :cond_13

    :goto_9
    const/16 v4, 0x53

    invoke-virtual {p0, p1, v1, v7, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v5, :cond_14

    :goto_a
    if-eq v1, v7, :cond_15

    :cond_11
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0

    :cond_12
    invoke-virtual {p0, p1, v1, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v0, v3

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1, v1, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/lit8 v1, v4, 0x1

    move v0, v3

    goto :goto_9

    :cond_14
    int-to-double v10, v2

    invoke-virtual {p0, p1, v1, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseSecond(Ljava/lang/String;II)D

    move-result-wide v0

    mul-double/2addr v0, v10

    iput-wide v0, v8, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-int/lit8 v1, v4, 0x1

    move v0, v3

    goto :goto_a

    :cond_15
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_11

    goto/16 :goto_7

    :cond_16
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v0
.end method

.method protected parseSecond(Ljava/lang/String;II)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' has wrong format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p3, :cond_4

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' has wrong format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' has wrong format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-wide v0
.end method
