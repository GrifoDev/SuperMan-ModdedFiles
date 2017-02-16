.class public Lcom/absolute/android/dateutils/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 35
    if-eqz p0, :cond_0

    move v2, v0

    move v0, v1

    .line 38
    :goto_0
    if-gtz v2, :cond_1

    .line 44
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 46
    if-lt v0, p1, :cond_3

    .line 51
    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 36
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 41
    div-int/lit8 v0, v2, 0xa

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 49
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v1, v1, 0x1

    :cond_3
    sub-int v3, p1, v0

    if-lt v1, v3, :cond_2

    goto :goto_2
.end method

.method public static decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 13

    .prologue
    const/16 v12, 0x2d

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_1

    move v0, v1

    .line 152
    :goto_0
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 153
    add-int/lit8 v0, v0, 0x5

    .line 155
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 156
    add-int/lit8 v0, v0, 0x3

    .line 158
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 159
    add-int/lit8 v0, v0, 0x3

    .line 161
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 162
    add-int/lit8 v0, v0, 0x3

    .line 164
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 165
    add-int/lit8 v0, v0, 0x3

    .line 167
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 168
    add-int/lit8 v0, v0, 0x2

    const-string/jumbo v3, "."

    .line 170
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    move v0, v1

    move v3, v2

    move v4, v1

    :goto_1
    const-string/jumbo v11, "GMT-00:00"

    .line 209
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 210
    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 213
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 218
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 220
    if-nez v4, :cond_8

    move-wide v0, v6

    .line 225
    :goto_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 227
    return-object v11

    :cond_1
    move v0, v2

    .line 149
    goto/16 :goto_0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, "0123456789"

    .line 175
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v0, v11, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v4, :cond_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x5a

    if-ne v3, v11, :cond_4

    move v0, v1

    move v3, v2

    move v4, v1

    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 194
    if-eq v3, v12, :cond_6

    const/16 v11, 0x2b

    .line 196
    if-eq v3, v11, :cond_5

    move v4, v1

    .line 201
    :cond_5
    :goto_4
    if-nez v4, :cond_7

    move v0, v1

    move v3, v4

    move v4, v2

    goto/16 :goto_1

    :cond_6
    move v4, v2

    .line 195
    goto :goto_4

    .line 203
    :cond_7
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v3

    move v3, v4

    move v4, v2

    goto/16 :goto_1

    .line 222
    :cond_8
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, v6

    goto :goto_2
.end method

.method public static encodeDateAsLocalTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0xc

    const/4 v4, 0x2

    .line 106
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x19

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xa

    .line 113
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 116
    :goto_0
    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ":"

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ":"

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xd

    .line 120
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x9

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PM "

    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v0, 0x1

    .line 128
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "/"

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "/"

    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    .line 132
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AM "

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const-string/jumbo v0, "GMT-00:00"

    .line 75
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "-"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "-"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    .line 83
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "T"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xb

    .line 87
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 88
    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ":"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ":"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xd

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Z"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeUTC()Ljava/util/Calendar;
    .locals 1

    .prologue
    const-string/jumbo v0, "GMT-00:00"

    .line 62
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 64
    return-object v0
.end method
