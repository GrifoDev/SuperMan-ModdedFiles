.class public abstract Lcom/android/incallui/callerinfocard/item/PersonalItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalItem"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private convertLunarToSolar(IIILjava/lang/String;)[I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Lcom/android/incallui/util/SolarLunarConverter;

    invoke-direct {v3}, Lcom/android/incallui/util/SolarLunarConverter;-><init>()V

    invoke-virtual {v3, p1, p2, p3, v0}, Lcom/android/incallui/util/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getMonth()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getDay()I

    move-result v2

    aput v2, v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Lcom/android/incallui/util/SolarLunarConverter;

    invoke-direct {v3}, Lcom/android/incallui/util/SolarLunarConverter;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/incallui/util/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getMonth()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {v3}, Lcom/android/incallui/util/SolarLunarConverter;->getDay()I

    move-result v1

    aput v1, v0, v7

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abstract getPassedDays(Landroid/content/Context;IZ)Ljava/lang/String;
.end method

.method public abstract getRemainedDays(Landroid/content/Context;IZ)Ljava/lang/String;
.end method

.method public abstract getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 19

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_1b

    :try_start_0
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "PersonalItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event day: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "support_lunar_birthday"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string v3, "PersonalItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event day (lunar): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object v11, v2

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    :try_start_2
    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1a

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_1
    const/4 v2, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    array-length v10, v9

    array-length v13, v9

    const/4 v14, 0x1

    if-gt v13, v14, :cond_9

    const/4 v9, 0x1

    if-eqz v11, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-static {v3, v9, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardDateUtils;->parseDate(Ljava/lang/String;ZZ)Ljava/util/Calendar;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v2, "PersonalItem"

    const-string v3, "PersonalItem : personalEventDay data can not split"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_4
    :try_start_3
    const-string v5, "PersonalItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonalItem setItem : exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object v11, v3

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    move v9, v5

    move-object v10, v8

    move v5, v6

    move v6, v7

    :goto_5
    const-string v7, "support_lunar_birthday"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v11, :cond_18

    const-string v7, "1"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "2"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v5, v11}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(IIILjava/lang/String;)[I

    move-result-object v4

    const/4 v2, 0x1

    if-eqz v4, :cond_6

    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v13, 0x2

    aget v4, v4, v13

    invoke-virtual {v10, v7, v8, v4}, Ljava/util/Calendar;->set(III)V

    :cond_6
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    const-wide/16 v16, 0x7

    cmp-long v4, v14, v16

    if-lez v4, :cond_d

    const/4 v4, 0x1

    move v7, v4

    :goto_6
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v4, v8, :cond_e

    const/4 v4, 0x1

    :goto_7
    and-int/2addr v4, v7

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v10, v4, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    invoke-virtual {v10, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v4, v4, v7

    invoke-virtual {v10, v5, v6, v4}, Ljava/util/Calendar;->set(III)V

    :cond_7
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v7, v5

    move v8, v6

    move v6, v2

    move v2, v4

    :goto_8
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long/2addr v4, v14

    const-wide/32 v14, 0x5265c00

    div-long/2addr v4, v14

    const-string v11, "PersonalItem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inDays : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v14, -0x7

    cmp-long v11, v4, v14

    if-gez v11, :cond_f

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v4, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v4, v10

    const-string v10, "PersonalItem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "re-calculate inDays : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    :goto_9
    const-wide/16 v10, -0x7

    cmp-long v10, v4, v10

    if-ltz v10, :cond_16

    const-wide/16 v10, 0x7

    cmp-long v10, v4, v10

    if-gtz v10, :cond_16

    const/4 v10, -0x1

    if-ne v8, v10, :cond_11

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v9, v8}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    const/16 v7, 0x1d

    if-ne v2, v7, :cond_10

    const/4 v2, 0x1

    :goto_a
    if-nez v8, :cond_14

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    const-string v3, "PersonalItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PersonalItem : exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_9
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_5
    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x2

    if-lt v10, v6, :cond_c

    const/4 v6, 0x4

    if-gt v10, v6, :cond_c

    add-int/lit8 v6, v10, -0x3

    if-ltz v6, :cond_19

    const-string v5, ""

    add-int/lit8 v6, v10, -0x3

    aget-object v6, v9, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    add-int/lit8 v2, v10, -0x3

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_a
    move v7, v2

    :goto_b
    add-int/lit8 v5, v10, -0x2

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v5, v10, -0x1

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, -0x1

    if-eq v6, v9, :cond_b

    const/4 v9, -0x1

    if-eq v5, v9, :cond_b

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Ljava/util/Calendar;->set(II)V

    :cond_b
    move v9, v2

    move-object v10, v8

    move v2, v7

    goto/16 :goto_5

    :cond_c
    const-string v2, "PersonalItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PersonalItem : personalEventDay format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_f
    const-wide/16 v14, 0x7

    cmp-long v11, v4, v14

    if-lez v11, :cond_8

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long/2addr v4, v14

    const-wide/32 v14, 0x5265c00

    div-long/2addr v4, v14

    const-string v11, "PersonalItem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "event day : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v11, v10, v13}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v10, "PersonalItem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "today day : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v10, "PersonalItem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "re-calculate inDays : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_11
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v9, v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v2, v9, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_13

    if-nez v7, :cond_12

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v7, 0xb

    if-eq v2, v7, :cond_14

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_3

    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_3

    :cond_14
    const v2, 0x7f020428

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mIconRes:I

    const-wide/16 v8, -0x7

    cmp-long v2, v4, v8

    if-ltz v2, :cond_15

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gez v2, :cond_15

    const-wide/16 v8, -0x1

    mul-long/2addr v4, v8

    long-to-int v2, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getPassedDays(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mContent:Ljava/lang/String;

    :goto_c
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mUpdateTime:J

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "/"

    const-string v4, "-"

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDate:Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    long-to-int v2, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getRemainedDays(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mContent:Ljava/lang/String;

    goto :goto_c

    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_2
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_4

    :cond_17
    move-object v2, v3

    goto :goto_d

    :cond_18
    move v7, v6

    move v8, v2

    move v6, v4

    move v2, v5

    goto/16 :goto_8

    :cond_19
    move v7, v2

    move v2, v5

    goto/16 :goto_b

    :cond_1a
    move-object v9, v2

    goto/16 :goto_1

    :cond_1b
    move-object v11, v2

    move-object v3, v4

    goto/16 :goto_0
.end method
