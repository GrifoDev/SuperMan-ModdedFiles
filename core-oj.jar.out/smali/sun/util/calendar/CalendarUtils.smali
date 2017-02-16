.class public Lsun/util/calendar/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final amod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 144
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v0

    .line 145
    .local v0, "z":I
    if-nez v0, :cond_0

    .end local p1    # "y":I
    :goto_0
    return p1

    .restart local p1    # "y":I
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public static final amod(JJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 149
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    .line 150
    .local v0, "z":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .end local p2    # "y":J
    :goto_0
    return-wide p2

    .restart local p2    # "y":J
    :cond_0
    move-wide p2, v0

    goto :goto_0
.end method

.method public static final floorDivide(II)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "d"    # I

    .prologue
    .line 85
    if-ltz p0, :cond_0

    .line 86
    div-int v0, p0, p1

    .line 85
    :goto_0
    return v0

    .line 86
    :cond_0
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final floorDivide(II[I)I
    .locals 3
    .param p0, "n"    # I
    .param p1, "d"    # I
    .param p2, "r"    # [I

    .prologue
    const/4 v2, 0x0

    .line 103
    if-ltz p0, :cond_0

    .line 104
    rem-int v1, p0, p1

    aput v1, p2, v2

    .line 105
    div-int v1, p0, p1

    return v1

    .line 107
    :cond_0
    add-int/lit8 v1, p0, 0x1

    div-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 108
    .local v0, "q":I
    mul-int v1, v0, p1

    sub-int v1, p0, v1

    aput v1, p2, v2

    .line 109
    return v0
.end method

.method public static final floorDivide(JI[I)I
    .locals 10
    .param p0, "n"    # J
    .param p2, "d"    # I
    .param p3, "r"    # [I

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    .line 126
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 127
    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    .line 128
    int-to-long v2, p2

    div-long v2, p0, v2

    long-to-int v1, v2

    return v1

    .line 130
    :cond_0
    add-long v2, p0, v8

    int-to-long v4, p2

    div-long/2addr v2, v4

    sub-long/2addr v2, v8

    long-to-int v0, v2

    .line 131
    .local v0, "q":I
    mul-int v1, v0, p2

    int-to-long v2, v1

    sub-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    .line 132
    return v0
.end method

.method public static final floorDivide(JJ)J
    .locals 4
    .param p0, "n"    # J
    .param p2, "d"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 72
    div-long v0, p0, p2

    .line 71
    :goto_0
    return-wide v0

    .line 72
    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public static final isGregorianLeapYear(I)Z
    .locals 3
    .param p0, "gregorianYear"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_2

    .line 44
    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 44
    goto :goto_0

    :cond_2
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public static final isJulianLeapYear(I)Z
    .locals 2
    .param p0, "normalizedJulianYear"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final mod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 140
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static final mod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 136
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I
    .param p2, "width"    # I

    .prologue
    .line 176
    int-to-long v0, p1

    .line 177
    .local v0, "d":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 178
    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    neg-long v0, v0

    .line 180
    add-int/lit8 p2, p2, -0x1

    .line 182
    :cond_0
    const/16 v3, 0xa

    .line 183
    .local v3, "n":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 184
    mul-int/lit8 v3, v3, 0xa

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, p2, :cond_2

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 187
    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    div-int/lit8 v3, v3, 0xa

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 191
    return-object p0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "width"    # I

    .prologue
    .line 157
    int-to-long v0, p1

    .line 158
    .local v0, "d":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 159
    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    neg-long v0, v0

    .line 161
    add-int/lit8 p2, p2, -0x1

    .line 163
    :cond_0
    const/16 v3, 0xa

    .line 164
    .local v3, "n":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 165
    mul-int/lit8 v3, v3, 0xa

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, p2, :cond_2

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 168
    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    div-int/lit8 v3, v3, 0xa

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    return-object p0
.end method
