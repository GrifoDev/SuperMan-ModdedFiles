.class public Lsun/util/calendar/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final amod(II)I
    .locals 1

    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public static final amod(JJ)J
    .locals 4

    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    move-wide p2, v0

    goto :goto_0
.end method

.method public static final floorDivide(II)I
    .locals 1

    if-ltz p0, :cond_0

    div-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final floorDivide(II[I)I
    .locals 3

    const/4 v2, 0x0

    if-ltz p0, :cond_0

    rem-int v1, p0, p1

    aput v1, p2, v2

    div-int v1, p0, p1

    return v1

    :cond_0
    add-int/lit8 v1, p0, 0x1

    div-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    mul-int v1, v0, p1

    sub-int v1, p0, v1

    aput v1, p2, v2

    return v0
.end method

.method public static final floorDivide(JI[I)I
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    int-to-long v2, p2

    div-long v2, p0, v2

    long-to-int v1, v2

    return v1

    :cond_0
    add-long v2, p0, v8

    int-to-long v4, p2

    div-long/2addr v2, v4

    sub-long/2addr v2, v8

    long-to-int v0, v2

    mul-int v1, v0, p2

    int-to-long v2, v1

    sub-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    return v0
.end method

.method public static final floorDivide(JJ)J
    .locals 4

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public static final isGregorianLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_2

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static final isJulianLeapYear(I)Z
    .locals 2

    const/4 v0, 0x0

    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final mod(II)I
    .locals 1

    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static final mod(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 6

    int-to-long v0, p1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-long v0, v0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/16 v3, 0xa

    const/4 v2, 0x2

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, p2, :cond_2

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 6

    int-to-long v0, p1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long v0, v0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/16 v3, 0xa

    const/4 v2, 0x2

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, p2, :cond_2

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method
