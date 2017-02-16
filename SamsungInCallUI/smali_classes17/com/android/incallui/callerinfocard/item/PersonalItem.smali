.class public abstract Lcom/android/incallui/callerinfocard/item/PersonalItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "PersonalItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalItem"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private convertLunarToSolar(IIILjava/lang/String;)[I
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "infoLunar"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "isLeapMonth":Z
    const-string v3, "1"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 242
    :goto_0
    new-instance v0, Lcom/android/incallui/util/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/incallui/util/SolarLunarConverter;-><init>()V

    .line 243
    .local v0, "converter":Lcom/android/incallui/util/SolarLunarConverter;
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/incallui/util/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 244
    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getMonth()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getDay()I

    move-result v4

    aput v4, v2, v3

    .line 245
    .end local v0    # "converter":Lcom/android/incallui/util/SolarLunarConverter;
    :goto_1
    return-object v2

    .line 239
    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I
    .locals 8
    .param p1, "personalCalendar"    # Ljava/util/Calendar;
    .param p2, "infoLunar"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "isLeapMonth":Z
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 225
    :goto_0
    new-instance v0, Lcom/android/incallui/util/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/incallui/util/SolarLunarConverter;-><init>()V

    .line 227
    .local v0, "converter":Lcom/android/incallui/util/SolarLunarConverter;
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 228
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    .line 229
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 226
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/incallui/util/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 231
    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getMonth()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0}, Lcom/android/incallui/util/SolarLunarConverter;->getDay()I

    move-result v3

    aput v3, v2, v7

    .line 232
    .end local v0    # "converter":Lcom/android/incallui/util/SolarLunarConverter;
    :goto_1
    return-object v2

    .line 222
    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v2, 0x0

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
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 52
    const/16 v18, 0x0

    .line 53
    .local v18, "personalEventDay":Ljava/lang/String;
    const/4 v10, 0x0

    .line 55
    .local v10, "infoLunar":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 57
    :try_start_0
    const-string v26, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 58
    .local v4, "columnIndex":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_0

    .line 59
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 60
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "event day: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v26, "support_lunar_birthday"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 64
    const-string v26, "data15"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 65
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_1

    .line 66
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 67
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "event day (lunar): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 78
    .end local v4    # "columnIndex":I
    :cond_2
    :goto_0
    if-eqz v18, :cond_4

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .line 80
    .local v24, "todayCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 83
    .local v17, "personalCalendar":Ljava/util/Calendar;
    :try_start_1
    const-string v26, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, "personalEventDaySplit":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    .line 86
    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 88
    :cond_3
    const/16 v25, -0x1

    .line 89
    .local v25, "year":I
    const/4 v15, -0x1

    .line 90
    .local v15, "month":I
    const/4 v5, -0x1

    .line 91
    .local v5, "day":I
    const/16 v23, -0x1

    .line 92
    .local v23, "savedYear":I
    const/16 v22, -0x1

    .line 93
    .local v22, "savedMonth":I
    const/16 v21, -0x1

    .line 94
    .local v21, "savedDay":I
    const/4 v13, 0x0

    .line 95
    .local v13, "isLunar":Z
    move-object/from16 v0, v20

    array-length v14, v0

    .line 96
    .local v14, "length":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_d

    .line 97
    const/16 v27, 0x1

    if-eqz v10, :cond_5

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardDateUtils;->parseDate(Ljava/lang/String;ZZ)Ljava/util/Calendar;

    move-result-object v17

    .line 98
    if-nez v17, :cond_6

    .line 99
    const-string v26, "PersonalItem"

    const-string v27, "PersonalItem : personalEventDay data can not split"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v5    # "day":I
    .end local v13    # "isLunar":Z
    .end local v14    # "length":I
    .end local v15    # "month":I
    .end local v17    # "personalCalendar":Ljava/util/Calendar;
    .end local v20    # "personalEventDaySplit":[Ljava/lang/String;
    .end local v21    # "savedDay":I
    .end local v22    # "savedMonth":I
    .end local v23    # "savedYear":I
    .end local v24    # "todayCalendar":Ljava/util/Calendar;
    .end local v25    # "year":I
    :cond_4
    :goto_2
    return-void

    .line 71
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem setItem : exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v26

    .line 97
    .restart local v5    # "day":I
    .restart local v13    # "isLunar":Z
    .restart local v14    # "length":I
    .restart local v15    # "month":I
    .restart local v17    # "personalCalendar":Ljava/util/Calendar;
    .restart local v20    # "personalEventDaySplit":[Ljava/lang/String;
    .restart local v21    # "savedDay":I
    .restart local v22    # "savedMonth":I
    .restart local v23    # "savedYear":I
    .restart local v24    # "todayCalendar":Ljava/util/Calendar;
    .restart local v25    # "year":I
    :cond_5
    const/16 v26, 0x0

    goto :goto_1

    .line 103
    :cond_6
    const/16 v26, 0x1

    const/16 v27, 0x1

    :try_start_3
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 133
    :cond_7
    :goto_3
    const-string v26, "support_lunar_birthday"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    if-eqz v10, :cond_b

    .line 135
    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    const-string v26, "2"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 136
    :cond_8
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v15, v5, v10}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(IIILjava/lang/String;)[I

    move-result-object v19

    .line 137
    .local v19, "personalEventDaySolar":[I
    const/4 v13, 0x1

    .line 138
    if-eqz v19, :cond_9

    .line 139
    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x1

    aget v27, v19, v27

    const/16 v28, 0x2

    aget v28, v19, v28

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 141
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v26, v26, v28

    const-wide/16 v28, 0x7

    cmp-long v26, v26, v28

    if-lez v26, :cond_11

    const/16 v16, 0x1

    .line 142
    .local v16, "needReCal":Z
    :goto_4
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_5
    and-int v16, v16, v26

    .line 143
    if-eqz v16, :cond_a

    .line 144
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v19

    .line 148
    if-eqz v19, :cond_a

    .line 149
    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x1

    aget v27, v19, v27

    const/16 v28, 0x2

    aget v28, v19, v28

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 151
    :cond_a
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 152
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 153
    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 157
    .end local v16    # "needReCal":Z
    .end local v19    # "personalEventDaySolar":[I
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v8, v26, v28

    .line 158
    .local v8, "inDays":J
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "inDays : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    const-wide/16 v26, -0x7

    cmp-long v26, v8, v26

    if-gez v26, :cond_13

    .line 161
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 162
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v8, v26, v28

    .line 163
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "re-calculate inDays : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    :cond_c
    :goto_6
    const-wide/16 v26, -0x7

    cmp-long v26, v8, v26

    if-ltz v26, :cond_1b

    const-wide/16 v26, 0x7

    cmp-long v26, v8, v26

    if-gtz v26, :cond_1b

    .line 173
    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 174
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 175
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 176
    .local v7, "gregorianCalendar":Ljava/util/GregorianCalendar;
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v12

    .line 177
    .local v12, "isLeapYear":Z
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_14

    const/16 v26, 0x1d

    move/from16 v0, v26

    if-ne v5, v0, :cond_14

    const/4 v11, 0x1

    .line 178
    .local v11, "isFeb29":Z
    :goto_7
    if-nez v12, :cond_18

    if-eqz v11, :cond_18

    .line 179
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 211
    .end local v5    # "day":I
    .end local v7    # "gregorianCalendar":Ljava/util/GregorianCalendar;
    .end local v8    # "inDays":J
    .end local v11    # "isFeb29":Z
    .end local v12    # "isLeapYear":Z
    .end local v13    # "isLunar":Z
    .end local v14    # "length":I
    .end local v15    # "month":I
    .end local v20    # "personalEventDaySplit":[Ljava/lang/String;
    .end local v21    # "savedDay":I
    .end local v22    # "savedMonth":I
    .end local v23    # "savedYear":I
    .end local v25    # "year":I
    :catch_1
    move-exception v6

    .line 212
    .restart local v6    # "e":Ljava/lang/Exception;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    .line 213
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem : exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "day":I
    .restart local v13    # "isLunar":Z
    .restart local v14    # "length":I
    .restart local v15    # "month":I
    .restart local v20    # "personalEventDaySplit":[Ljava/lang/String;
    .restart local v21    # "savedDay":I
    .restart local v22    # "savedMonth":I
    .restart local v23    # "savedYear":I
    .restart local v25    # "year":I
    :cond_d
    const/16 v26, 0x1

    const/16 v27, 0x1

    :try_start_4
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v14, v0, :cond_10

    const/16 v26, 0x4

    move/from16 v0, v26

    if-gt v14, v0, :cond_10

    .line 112
    add-int/lit8 v26, v14, -0x3

    if-ltz v26, :cond_f

    .line 113
    const-string v26, ""

    add-int/lit8 v27, v14, -0x3

    aget-object v27, v20, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 114
    add-int/lit8 v26, v14, -0x3

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 115
    :cond_e
    move/from16 v23, v25

    .line 117
    :cond_f
    add-int/lit8 v26, v14, -0x2

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v15, v26, -0x1

    .line 118
    add-int/lit8 v26, v14, -0x1

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 119
    move/from16 v22, v15

    .line 120
    move/from16 v21, v5

    .line 127
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v15, v0, :cond_7

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_7

    .line 128
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 122
    :cond_10
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem : personalEventDay format = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_2

    .line 141
    .restart local v19    # "personalEventDaySolar":[I
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 142
    .restart local v16    # "needReCal":Z
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 164
    .end local v16    # "needReCal":Z
    .end local v19    # "personalEventDaySolar":[I
    .restart local v8    # "inDays":J
    :cond_13
    const-wide/16 v26, 0x7

    cmp-long v26, v8, v26

    if-lez v26, :cond_c

    .line 165
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v8, v26, v28

    .line 167
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "event day : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "today day : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "re-calculate inDays : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 177
    .restart local v7    # "gregorianCalendar":Ljava/util/GregorianCalendar;
    .restart local v12    # "isLeapYear":Z
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 183
    .end local v7    # "gregorianCalendar":Ljava/util/GregorianCalendar;
    .end local v12    # "isLeapYear":Z
    :cond_15
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_18

    .line 184
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    sub-int v26, v23, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 185
    if-nez v15, :cond_16

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 186
    :cond_16
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_2

    .line 190
    :cond_17
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z

    goto/16 :goto_2

    .line 196
    :cond_18
    const v26, 0x7f020366

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mIconRes:I

    .line 197
    const-wide/16 v26, -0x7

    cmp-long v26, v8, v26

    if-ltz v26, :cond_1a

    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-gez v26, :cond_1a

    .line 198
    const-wide/16 v26, -0x1

    mul-long v8, v8, v26

    .line 199
    long-to-int v0, v8

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getPassedDays(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mContent:Ljava/lang/String;

    .line 204
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mUpdateTime:J

    .line 205
    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 206
    const-string v26, "/"

    const-string v27, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 207
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDate:Ljava/lang/String;

    goto/16 :goto_2

    .line 201
    :cond_1a
    long-to-int v0, v8

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getRemainedDays(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mContent:Ljava/lang/String;

    goto :goto_8

    .line 209
    :cond_1b
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mDeleted:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2
.end method
