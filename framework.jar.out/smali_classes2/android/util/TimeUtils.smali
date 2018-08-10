.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastCountry:Ljava/lang/String;

.field private static final sLastLockObj:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x1d

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    sput-object v1, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    sput-object v1, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0x3e7

    if-le p0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    add-int v1, v0, p1

    return v1

    :cond_1
    const/16 v1, 0x63

    if-gt p0, v1, :cond_2

    if-eqz p2, :cond_3

    if-lt p3, v4, :cond_3

    :cond_2
    add-int/lit8 v1, p1, 0x3

    return v1

    :cond_3
    const/16 v1, 0x9

    if-gt p0, v1, :cond_4

    if-eqz p2, :cond_5

    if-lt p3, v3, :cond_5

    :cond_4
    add-int/lit8 v1, p1, 0x2

    return v1

    :cond_5
    if-nez p2, :cond_6

    if-lez p0, :cond_7

    :cond_6
    add-int/lit8 v1, p1, 0x1

    return v1

    :cond_7
    return v2
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 22

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    add-int/lit8 v5, v16, 0x1

    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v16

    add-int/lit8 v4, v16, 0x1

    return v4

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    const/16 v17, 0x2b

    :goto_1
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const v4, 0x15180

    move/from16 v0, v18

    if-lt v0, v4, :cond_3

    const v4, 0x15180

    div-int v3, v18, v4

    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-lt v0, v4, :cond_4

    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    div-int/lit8 v14, v18, 0x3c

    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    :cond_5
    const/4 v5, 0x0

    if-eqz p2, :cond_b

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_5
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    :goto_6
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    const/16 v4, 0x20

    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_6
    const/16 v17, 0x2d

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    aput-char v17, v2, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    if-eqz p2, :cond_c

    const/16 v20, 0x1

    :goto_7
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_8
    if-eqz v20, :cond_e

    const/4 v11, 0x2

    :goto_9
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_a
    if-eqz v20, :cond_10

    const/4 v11, 0x2

    :goto_b
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_c
    if-eqz v20, :cond_12

    const/4 v11, 0x2

    :goto_d
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    if-eqz v20, :cond_13

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_e
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    const/16 v4, 0x73

    aput-char v4, v2, v5

    add-int/lit8 v4, v5, 0x1

    return v4

    :cond_c
    const/16 v20, 0x0

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    goto :goto_d

    :cond_13
    const/4 v11, 0x0

    goto :goto_e
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 10

    const/4 v0, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    invoke-static {p4}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v4, p0, :cond_1

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {v6, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p1, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    sget-object v13, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    monitor-enter v13

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v12, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-object v12

    :cond_0
    monitor-exit v13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    :cond_1
    return-object v10

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    new-instance v12, Ljava/util/Locale;

    const-string/jumbo v13, ""

    invoke-direct {v12, v13, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x1170019

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :try_start_1
    const-string/jumbo v12, "timezones"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v12, "timezone"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "GMT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :try_start_2
    const-string/jumbo v12, "code"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "GMT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v12, "TimeUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Got xml parser exception getTimeZone(\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'): e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v12, "TimeUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Got IO exception getTimeZone(\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'): e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v12

    :cond_7
    sget-object v13, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    monitor-enter v13

    :try_start_5
    sput-object v10, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    sput-object p0, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    sget-object v12, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v13

    return-object v12

    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method public static getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v6

    :cond_0
    monitor-exit v7

    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    sput-object v2, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    return-object v6

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 5

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    move v1, p3

    const/16 v3, 0x3e7

    if-le p1, v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    rem-int/lit8 v0, p1, 0xa

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_6

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v3, v3, v2

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_8

    const/4 v3, 0x3

    if-lt p5, v3, :cond_8

    :goto_2
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr p1, v3

    :cond_3
    if-eqz p4, :cond_9

    const/4 v3, 0x2

    if-lt p5, v3, :cond_9

    :cond_4
    :goto_3
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v3, v0, 0xa

    sub-int/2addr p1, v3

    :cond_5
    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_6
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_7
    return p3

    :cond_8
    const/16 v3, 0x63

    if-le p1, v3, :cond_3

    goto :goto_2

    :cond_9
    const/16 v3, 0x9

    if-gt p1, v3, :cond_4

    if-eq v1, p3, :cond_5

    goto :goto_3
.end method
