.class public final Landroid/service/notification/ZenModeConfig$XmlV1;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlV1"
.end annotation


# static fields
.field private static final EXIT_CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final EXIT_CONDITION_TAG:Ljava/lang/String; = "exitCondition"

.field private static final SLEEP_ATT_END_HR:Ljava/lang/String; = "endHour"

.field private static final SLEEP_ATT_END_MIN:Ljava/lang/String; = "endMin"

.field private static final SLEEP_ATT_MODE:Ljava/lang/String; = "mode"

.field private static final SLEEP_ATT_NONE:Ljava/lang/String; = "none"

.field private static final SLEEP_ATT_START_HR:Ljava/lang/String; = "startHour"

.field private static final SLEEP_ATT_START_MIN:Ljava/lang/String; = "startMin"

.field public static final SLEEP_MODE_DAYS_PREFIX:Ljava/lang/String; = "days:"

.field public static final SLEEP_MODE_NIGHTS:Ljava/lang/String; = "nights"

.field public static final SLEEP_MODE_WEEKNIGHTS:Ljava/lang/String; = "weeknights"

.field private static final SLEEP_TAG:Ljava/lang/String; = "sleep"


# instance fields
.field public allowAlarms:Z

.field public allowCalls:Z

.field public allowEvents:Z

.field public allowFrom:I

.field public allowMessages:Z

.field public allowReminders:Z

.field public applyDowntime:Z

.field public conditionComponents:[Landroid/content/ComponentName;

.field public conditionIds:[Landroid/net/Uri;

.field public exitCondition:Landroid/service/notification/Condition;

.field public exitConditionComponent:Landroid/content/ComponentName;

.field public sleepEndHour:I

.field public sleepEndMinute:I

.field public sleepMode:Ljava/lang/String;

.field public sleepNone:Z

.field public sleepStartHour:I

.field public sleepStartMinute:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    .line 1286
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    .line 1288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowAlarms:Z

    .line 1289
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->applyDowntime:Z

    .line 1291
    iput v1, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    .line 1267
    return-void
.end method

.method private static isValidSleepMode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1305
    if-eqz p0, :cond_0

    const-string/jumbo v1, "nights"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    const-string/jumbo v1, "weeknights"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1305
    if-nez v1, :cond_0

    .line 1306
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v0

    .line 1306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v7, Landroid/service/notification/ZenModeConfig$XmlV1;

    invoke-direct {v7}, Landroid/service/notification/ZenModeConfig$XmlV1;-><init>()V

    .line 1324
    .local v7, "rt":Landroid/service/notification/ZenModeConfig$XmlV1;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    .local v1, "conditionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v3, "conditionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    .line 1327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1328
    .local v10, "tag":Ljava/lang/String;
    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    const-string/jumbo v12, "zen"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1329
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ComponentName;

    .line 1330
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/ComponentName;

    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->conditionComponents:[Landroid/content/ComponentName;

    .line 1332
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/net/Uri;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/net/Uri;

    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->conditionIds:[Landroid/net/Uri;

    .line 1334
    :cond_1
    return-object v7

    .line 1336
    :cond_2
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 1337
    const-string/jumbo v12, "allow"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1338
    const-string/jumbo v12, "calls"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    .line 1339
    const-string/jumbo v12, "messages"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    .line 1340
    const-string/jumbo v12, "reminders"

    .line 1341
    const/4 v13, 0x0

    .line 1340
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    .line 1342
    const-string/jumbo v12, "events"

    .line 1343
    const/4 v13, 0x0

    .line 1342
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    .line 1345
    const-string/jumbo v12, "alarms"

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowAlarms:Z

    .line 1346
    const-string/jumbo v12, "applydowntime"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->applyDowntime:Z

    .line 1348
    const-string/jumbo v12, "from"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    .line 1349
    iget v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    if-ltz v12, :cond_3

    iget v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_0

    .line 1350
    :cond_3
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad source in config:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1351
    iget v14, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    .line 1350
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1353
    :cond_4
    const-string/jumbo v12, "sleep"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1354
    const-string/jumbo v12, "mode"

    const/4 v13, 0x0

    invoke-interface {p0, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, "mode":Ljava/lang/String;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$XmlV1;->isValidSleepMode(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .end local v6    # "mode":Ljava/lang/String;
    :goto_1
    iput-object v6, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    .line 1356
    const-string/jumbo v12, "none"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepNone:Z

    .line 1357
    const-string/jumbo v12, "startHour"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1358
    .local v8, "startHour":I
    const-string/jumbo v12, "startMin"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1359
    .local v9, "startMinute":I
    const-string/jumbo v12, "endHour"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 1360
    .local v4, "endHour":I
    const-string/jumbo v12, "endMin"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1361
    .local v5, "endMinute":I
    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .end local v8    # "startHour":I
    :goto_2
    iput v8, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    .line 1362
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .end local v9    # "startMinute":I
    :goto_3
    iput v9, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    .line 1363
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .end local v4    # "endHour":I
    :goto_4
    iput v4, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    .line 1364
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .end local v5    # "endMinute":I
    :goto_5
    iput v5, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    goto/16 :goto_0

    .line 1355
    .restart local v6    # "mode":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1361
    .end local v6    # "mode":Ljava/lang/String;
    .restart local v4    # "endHour":I
    .restart local v5    # "endMinute":I
    .restart local v8    # "startHour":I
    .restart local v9    # "startMinute":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 1362
    .end local v8    # "startHour":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1363
    .end local v9    # "startMinute":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 1364
    .end local v4    # "endHour":I
    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    .line 1365
    .end local v5    # "endMinute":I
    :cond_a
    const-string/jumbo v12, "condition"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1367
    const-string/jumbo v12, "component"

    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1368
    .local v0, "component":Landroid/content/ComponentName;
    const-string/jumbo v12, "id"

    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap1(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1369
    .local v2, "conditionId":Landroid/net/Uri;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1370
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1373
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "conditionId":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v12, "exitCondition"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1374
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v12

    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitCondition:Landroid/service/notification/Condition;

    .line 1375
    iget-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v12, :cond_0

    .line 1377
    const-string/jumbo v12, "component"

    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1376
    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitConditionComponent:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1382
    .end local v10    # "tag":Ljava/lang/String;
    :cond_c
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Failed to reach END_DOCUMENT"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static tryParseDays(Ljava/lang/String;)[I
    .locals 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1310
    if-nez p0, :cond_0

    return-object v1

    .line 1311
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1312
    const-string/jumbo v0, "nights"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    return-object v0

    .line 1313
    :cond_1
    const-string/jumbo v0, "weeknights"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    return-object v0

    .line 1314
    :cond_2
    const-string/jumbo v0, "days:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 1315
    :cond_3
    const-string/jumbo v0, "days:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 1316
    :cond_4
    const-string/jumbo v0, "days:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->-wrap3(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
