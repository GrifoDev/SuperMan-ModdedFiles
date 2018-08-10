.class public Lcom/absolute/android/dateutils/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz p0, :cond_1

    :goto_0
    if-gtz v1, :cond_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lt v0, p1, :cond_3

    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_2
    sub-int v4, p1, v0

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 22

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    :goto_0
    add-int/lit8 v18, v8, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v18, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v18, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v18, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v18, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v18, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v8, v8, 0x2

    const-string/jumbo v18, "."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v15, 0x0

    const/16 v17, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v8, v0, :cond_4

    :cond_1
    :goto_1
    const-string/jumbo v18, "GMT-00:00"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    if-nez v15, :cond_7

    :goto_2
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v18

    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    const-string/jumbo v16, "0123456789"

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x2b

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v17, 0x0

    :goto_4
    if-eqz v17, :cond_1

    add-int/lit8 v18, v8, 0x1

    add-int/lit8 v19, v8, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v18, v8, 0x4

    add-int/lit8 v19, v8, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x1

    goto :goto_4

    :cond_6
    const/16 v17, -0x1

    goto :goto_4

    :cond_7
    mul-int/lit8 v19, v4, 0x3c

    mul-int/lit8 v19, v19, 0x3c

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    mul-int/lit8 v20, v5, 0x3c

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v19, v19, v17

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v6, v20

    goto/16 :goto_2
.end method

.method public static encodeDateAsLocalTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x19

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0, v5}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3, v5}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3, v5}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v5}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3, v5}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "AM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v2, "GMT-00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentTimeUTC()Ljava/util/Calendar;
    .locals 1

    const-string/jumbo v0, "GMT-00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
