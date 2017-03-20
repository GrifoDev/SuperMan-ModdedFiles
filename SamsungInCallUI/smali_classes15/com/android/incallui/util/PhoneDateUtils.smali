.class public Lcom/android/incallui/util/PhoneDateUtils;
.super Ljava/lang/Object;
.source "PhoneDateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FAST_FORMAT_HHMMSS:Ljava/lang/String; = "%1$02d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field private static final FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_PADDING_NUM:J = 0x0L

.field private static final TIME_SEPARATOR:C = ':'

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static mDateFormat:[Ljava/lang/String; = null

.field public static final mDay:Ljava/lang/String; = "Day"

.field private static mSytemDateFormat:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 34
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 44
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "--MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 46
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 51
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MM-dd-yyyy"

    aput-object v3, v2, v1

    const-string v3, "dd-MM-yyyy"

    aput-object v3, v2, v7

    const-string v3, "yyyy-MM-dd"

    aput-object v3, v2, v6

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->mSytemDateFormat:[Ljava/lang/String;

    .line 52
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MM/dd/yyyy"

    aput-object v3, v2, v1

    const-string v3, "dd/MM/yyyy"

    aput-object v3, v2, v7

    const-string v3, "yyyy/MM/dd"

    aput-object v3, v2, v6

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    .line 56
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/android/incallui/util/PhoneDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v1

    sget-object v3, Lcom/android/incallui/util/PhoneDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v7

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v2, v8

    const/4 v3, 0x4

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 66
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 69
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/incallui/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    .line 73
    sget-object v2, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    .local v0, "format":Ljava/text/SimpleDateFormat;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 74
    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 75
    sget-object v4, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v2, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    sget-object v2, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v6, 0x0

    .line 176
    :goto_0
    return-object v6

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, p1

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 137
    .local v5, "parsePosition":Ljava/text/ParsePosition;
    sget-object v7, Lcom/android/incallui/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 138
    :try_start_0
    sget-object v6, Lcom/android/incallui/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 139
    .local v1, "date":Ljava/util/Date;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 142
    const-string v0, "dd/MM"

    .line 154
    .local v0, "cs":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    .local v4, "outFormat":Ljava/text/DateFormat;
    sget-object v6, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    monitor-enter v4

    .line 157
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 139
    .end local v0    # "cs":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 161
    .restart local v1    # "date":Ljava/util/Date;
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v6, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 162
    sget-object v6, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v2, v6, v3

    .line 163
    .local v2, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v2

    .line 164
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 165
    invoke-virtual {v2, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 166
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 167
    const-string v0, "dd/MM/yyyy"

    .line 170
    .restart local v0    # "cs":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 171
    .restart local v4    # "outFormat":Ljava/text/DateFormat;
    sget-object v6, Lcom/android/incallui/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v2

    goto :goto_0

    .line 174
    .end local v0    # "cs":Ljava/lang/String;
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :catchall_2
    move-exception v6

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    :cond_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "f":Ljava/text/SimpleDateFormat;
    :cond_4
    move-object v6, p1

    .line 176
    goto :goto_0
.end method

.method public static formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    const-string v3, ". "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "elapsedSeconds"    # J

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "elapsedSeconds"    # J
    .param p2, "enableHour"    # Z

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 15
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 239
    const-wide/16 v2, 0x0

    .line 240
    .local v2, "hours":J
    const-wide/16 v4, 0x0

    .line 241
    .local v4, "minutes":J
    const-wide/16 v6, 0x0

    .line 243
    .local v6, "seconds":J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 244
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 245
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long p1, p1, v0

    .line 247
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 248
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 249
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long p1, p1, v0

    .line 251
    :cond_1
    move-wide/from16 v6, p1

    .line 254
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 255
    const-string v1, "%1$d:%2$02d:%3$02d"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_2
    const-string v9, "%1$02d:%2$02d"

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/String;
    .locals 15
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J
    .param p3, "enableHour"    # Z

    .prologue
    .line 263
    const-wide/16 v2, 0x0

    .line 264
    .local v2, "hours":J
    const-wide/16 v4, 0x0

    .line 265
    .local v4, "minutes":J
    const-wide/16 v6, 0x0

    .line 267
    .local v6, "seconds":J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 268
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 269
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long p1, p1, v0

    .line 271
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 272
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 273
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long p1, p1, v0

    .line 275
    :cond_1
    move-wide/from16 v6, p1

    .line 278
    if-eqz p3, :cond_2

    .line 279
    const-string v1, "%1$02d:%2$02d:%3$02d"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_2
    const-string v9, "%1$02d:%2$02d"

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;J)Ljava/lang/String;
    .locals 14
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "elapsedSeconds"    # J

    .prologue
    .line 287
    const-wide/16 v8, 0x0

    .line 288
    .local v8, "hours":J
    const-wide/16 v2, 0x0

    .line 289
    .local v2, "minutes":J
    const-wide/16 v4, 0x0

    .line 291
    .local v4, "seconds":J
    const-wide/16 v0, 0xe10

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 292
    const-wide/16 v0, 0xe10

    div-long v8, p2, v0

    .line 293
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v8

    sub-long p2, p2, v0

    .line 295
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 296
    const-wide/16 v0, 0x3c

    div-long v2, p2, v0

    .line 297
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v2

    sub-long p2, p2, v0

    .line 299
    :cond_1
    move-wide/from16 v4, p2

    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    const-string v0, "%1$02d:%2$02d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string v1, "%1$02d:%2$02d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 303
    :cond_2
    const-string v0, "%1$02d:%2$02d:%3$02d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    const-string v7, "%1$02d:%2$02d:%3$02d"

    move-object v6, p0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v6 .. v13}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_3
    const-string v7, "%1$d:%2$02d:%3$02d"

    move-object v6, p0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v6 .. v13}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 4
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "minutes"    # J
    .param p4, "seconds"    # J

    .prologue
    const/4 v3, 0x0

    .line 352
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    move-object v0, p0

    .line 354
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-static {p2, p3}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {p4, p5}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 357
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 364
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 6
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v2, 0x3a

    .line 315
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    move-object v0, p0

    .line 317
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 322
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p4, p5}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {p6, p7}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 320
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 328
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, "%1$02d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    move-object v0, p0

    .line 330
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 336
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-static {p2, p3}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p4, p5}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p6, p7}, Lcom/android/incallui/util/PhoneDateUtils;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 344
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static final getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 5
    .param p0, "dateType"    # Ljava/lang/String;
    .param p1, "use24Hour"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "dateFormat":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 189
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    aget-object v0, v1, v2

    .line 202
    :goto_0
    if-eqz p1, :cond_0

    .line 203
    const-string v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:mm a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 191
    :cond_1
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mSytemDateFormat:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 192
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 193
    :cond_2
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mSytemDateFormat:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 194
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    aget-object v0, v1, v2

    goto :goto_0

    .line 195
    :cond_3
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mSytemDateFormat:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 196
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 198
    :cond_4
    sget-object v1, Lcom/android/incallui/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    aget-object v0, v1, v2

    goto :goto_0

    .line 206
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 88
    .local v3, "parsePosition":Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 89
    sget-object v4, Lcom/android/incallui/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v4, v2

    .line 90
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 91
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 92
    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 93
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 94
    monitor-exit v1

    .line 98
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v0

    .line 96
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_0
    monitor-exit v1

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 98
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static toDigitChar(J)Ljava/lang/String;
    .locals 4
    .param p0, "digit"    # J

    .prologue
    .line 369
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toTwoDigitChar(J)Ljava/lang/String;
    .locals 4
    .param p0, "digit"    # J

    .prologue
    .line 373
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
