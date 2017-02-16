.class public Lcom/samsung/android/mateservice/MateLog;
.super Ljava/lang/Object;
.source "MateLog.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static final LEVEL_DEBUG:I = 0x4

.field private static final LEVEL_ERROR:I = 0x1

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_VERBOSE:I = 0x5

.field private static final LEVEL_WARN:I = 0x2

.field private static final TIME_DIFF:J = 0x12a05f200L

.field private static sCurLogLevel:I

.field private static sLateUpdated:J

.field private static sSafeString:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/samsung/android/mateservice/MateLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 27
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->internalLogLevel()I

    move-result v0

    sput v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    .line 28
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->internalUseSafeString()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mateservice/MateLog;->sSafeString:Z

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/mateservice/MateLog;->sLateUpdated:J

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 132
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 134
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 139
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mateservice/MateLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object p1
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 150
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 155
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mateservice/MateLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object p1
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeStamp"    # J

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/android/mateservice/MateLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoDebugLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "ro.debug_level"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/mateservice/FwDependency;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-boolean v0, Lcom/samsung/android/mateservice/MateLog;->sSafeString:Z

    if-eqz v0, :cond_1

    const-string/jumbo p0, "..."

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MateSvc|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 116
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 118
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 123
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mateservice/MateLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object p1
.end method

.method private static internalLogLevel()I
    .locals 7

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v3, 0x5

    .line 74
    .local v3, "retVal":I
    :goto_0
    const-string/jumbo v5, "debug.mate.log.service"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/samsung/android/mateservice/FwDependency;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "none"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string/jumbo v5, "error"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-string/jumbo v5, "warning"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "info"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string/jumbo v5, "debug"

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-string/jumbo v5, "verbose"

    const/4 v6, 0x5

    aput-object v5, v0, v6

    .line 78
    .local v0, "correctValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "index":I
    const/4 v1, -0x1

    .line 80
    .local v1, "found":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 81
    aget-object v5, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    move v1, v2

    .line 87
    :cond_1
    const/4 v5, -0x1

    if-le v1, v5, :cond_2

    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 88
    move v3, v1

    .line 92
    .end local v0    # "correctValue":[Ljava/lang/String;
    .end local v1    # "found":I
    .end local v2    # "index":I
    :cond_2
    return v3

    .line 72
    .end local v3    # "retVal":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isRoDebugLevelMid()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x3

    .restart local v3    # "retVal":I
    goto :goto_0

    .line 80
    .restart local v0    # "correctValue":[Ljava/lang/String;
    .restart local v1    # "found":I
    .restart local v2    # "index":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalUseSafeString()Z
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 45
    .local v0, "retVal":Z
    :goto_0
    const-string/jumbo v2, "debug.mate.log.safe_string"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/samsung/android/mateservice/FwDependency;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_1
    return v0

    .line 44
    .end local v0    # "retVal":Z
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 48
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isDebugLogLevel()Z
    .locals 2

    .prologue
    .line 187
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoDebugLevelMid()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->getRoDebugLevel()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "debugLevel":Ljava/lang/String;
    const-string/jumbo v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static logLevel()I
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 192
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    return v0
.end method

.method private static updateLogLevel()V
    .locals 6

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 35
    .local v0, "current":J
    sget-wide v2, Lcom/samsung/android/mateservice/MateLog;->sLateUpdated:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->internalLogLevel()I

    move-result v2

    sput v2, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    .line 37
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->internalUseSafeString()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/mateservice/MateLog;->sSafeString:Z

    .line 38
    sput-wide v0, Lcom/samsung/android/mateservice/MateLog;->sLateUpdated:J

    .line 33
    :cond_0
    return-void
.end method

.method public static useSafeString()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/samsung/android/mateservice/MateLog;->sSafeString:Z

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 102
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 107
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mateservice/MateLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object p1
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 163
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->updateLogLevel()V

    .line 165
    sget v0, Lcom/samsung/android/mateservice/MateLog;->sCurLogLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 170
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mateservice/MateLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object p1
.end method
