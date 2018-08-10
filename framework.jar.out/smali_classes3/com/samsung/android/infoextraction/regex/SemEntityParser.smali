.class public Lcom/samsung/android/infoextraction/regex/SemEntityParser;
.super Ljava/lang/Object;
.source "SemEntityParser.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DELIMITER:Ljava/lang/String; = "\uff03"

.field public static final PARSE_LEVEL_NORMAL:I = 0x1

.field public static final PARSE_LEVEL_WEAK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemEntityParser"

.field private static dayOfToday:I

.field private static mContext:Landroid/content/Context;

.field private static mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

.field private static mLevel:I

.field private static mWorkStr:Ljava/lang/String;

.field private static mWorkStrForMillis:Ljava/lang/String;

.field private static monthOfToday:I

.field private static today:Ljava/util/Calendar;

.field private static yearOfToday:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrangeRemainData()V
    .locals 3

    const-string/jumbo v1, "(\uff03|[[:space:]])+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    return-void
.end method

.method private static clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v0}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->clear()V

    sput-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    :cond_0
    return-void
.end method

.method private static convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v4, Landroid/text/format/Time;

    const-string/jumbo v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-ne p1, v6, :cond_2

    :try_start_0
    const-string/jumbo v5, "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v8, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->hour:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->second:I

    const-string/jumbo v5, "SemEntityParser"

    const-string/jumbo v6, "convertDateToMillis() completed successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SemEntityParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", minute:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", second:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    array-length v5, v1

    if-ne v5, v7, :cond_1

    sget v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SemEntityParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail convertDateToMillis() by exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ""

    return-object v5

    :cond_1
    :try_start_1
    const-string/jumbo v5, "SemEntityParser"

    const-string/jumbo v6, "fail convertDateToMillis() by invalid length. (type:1)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ""

    return-object v5

    :cond_2
    if-ne p1, v7, :cond_5

    const-string/jumbo v5, "[[[:space:]]\\,\\.]+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v8, :cond_3

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    :cond_3
    array-length v5, v1

    if-ne v5, v7, :cond_4

    sget v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "SemEntityParser"

    const-string/jumbo v6, "fail convertDateToMillis() by invalid length. (type:2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ""

    return-object v5

    :cond_5
    const-string/jumbo v5, "SemEntityParser"

    const-string/jumbo v6, "fail convertDateToMillis() by invalid patternType : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5
.end method

.method private static convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "th"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    return-object p0
.end method

.method private static convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/16 v14, 0xc

    new-instance v11, Landroid/text/format/Time;

    const-string/jumbo v12, "UTC"

    invoke-direct {v11, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v12, "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v0, "\uc624\uc804"

    const-string/jumbo v5, "\uc624\ud6c4"

    const-string/jumbo v12, "[0-9]+"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v12, v11, Landroid/text/format/Time;->year:I

    sget v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->monthOfToday:I

    iput v12, v11, Landroid/text/format/Time;->month:I

    sget v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->dayOfToday:I

    iput v12, v11, Landroid/text/format/Time;->monthDay:I

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Landroid/text/format/Time;->hour:I

    const-string/jumbo v12, "pm"

    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "PM"

    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_1
    iget v12, v11, Landroid/text/format/Time;->hour:I

    if-eq v12, v14, :cond_2

    iget v12, v11, Landroid/text/format/Time;->hour:I

    add-int/lit8 v12, v12, 0xc

    iput v12, v11, Landroid/text/format/Time;->hour:I

    :cond_2
    :goto_1
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Landroid/text/format/Time;->minute:I

    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->second:I

    const-string/jumbo v12, "SemEntityParser"

    const-string/jumbo v13, "convertTimeToMillis() completed successfully"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "SemEntityParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "year:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->year:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", month:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->month:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->hour:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", minute:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->minute:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", second:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/text/format/Time;->second:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_3
    const-string/jumbo v12, "am"

    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "AM"

    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    iget v12, v11, Landroid/text/format/Time;->hour:I

    if-ne v12, v14, :cond_2

    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->hour:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v12, "SemEntityParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fail convertTimeToMillis() by exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, ""

    return-object v12

    :cond_5
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Landroid/text/format/Time;->hour:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
    .locals 2

    sput-object p0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->clear()V

    new-instance v0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    sput p2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->monthOfToday:I

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->dayOfToday:I

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingEmailInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingDateInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingTimeInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingPhoneNumInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingURLInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingDateMillisInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingTimeMillisInfo()V

    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->arrangeRemainData()V

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    return-object v0
.end method

.method private static parsingDateInfo()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v9, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v9, v4, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date(pattern type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v9, v4, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date(pattern type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v9, v4, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date(pattern type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static parsingDateMillisInfo()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    const-string/jumbo v9, "((((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v4, v14}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date for millis(type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "((((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v4, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date for millis(type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v4, v14}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v9, "SemEntityParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add date for millis(type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static parsingEmailInfo()V
    .locals 8

    const/4 v7, 0x0

    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    :goto_0
    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    if-ltz v4, :cond_0

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v2, ""

    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    if-ltz v4, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v4, "SemEntityParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add email address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static parsingPhoneNumInfo()V
    .locals 8

    const/4 v7, 0x0

    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    :goto_0
    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v2, ""

    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    if-ltz v4, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v4, "SemEntityParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add tel number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->refactoringPhoneNumber()V

    return-void
.end method

.method private static parsingTimeInfo()V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v3, "SemEntityParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parsingTimeMillisInfo()V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v1}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v3, "SemEntityParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add time for millis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parsingURLInfo()V
    .locals 6

    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->URL:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v3, "SemEntityParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static refactoringPhoneNumber()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x0

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v5, v9}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->getCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v5, v9}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->getInfoList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->deleteInfo(II)Z

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    const-string/jumbo v5, "SemEntityParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add refactoring phone number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_4

    const-string/jumbo v3, "[:space:]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    return-object v2
.end method
