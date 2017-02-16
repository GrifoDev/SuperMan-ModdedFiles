.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.super Ljava/lang/Object;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "CAELogger"

.field public static final TAG:Ljava/lang/String; = "CAE"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

.field private static isCaller:Z

.field private static isConsoleLogging:Z

.field private static isFileLogging:Z

.field private static isGrayBoxTesting:Z

.field private static mLevel:I

.field private static mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "priority"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 38
    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 41
    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    .line 44
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 47
    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 294
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 339
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 340
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "exMsg"    # Ljava/lang/Throwable;

    .prologue
    .line 351
    sget-object v3, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    sget-object v3, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 355
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 356
    sget-object v3, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    sget-object v3, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 361
    .local v1, "ourCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 362
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 350
    :cond_1
    return-void
.end method

.method private static getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "priority"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 383
    .local v5, "utcDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 384
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 385
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 386
    .local v3, "month":I
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 387
    .local v0, "date":I
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 388
    .local v1, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 389
    .local v2, "min":I
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 391
    .local v4, "sec":I
    const-string/jumbo v7, "[%4d-%02d-%02d %02d:%02d:%02d] [%s] [%s] %s %s"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    .line 392
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    const/4 v9, 0x6

    aput-object p0, v8, v9

    const/4 v9, 0x7

    aput-object p1, v8, v9

    const/16 v9, 0x8

    aput-object p2, v8, v9

    const/16 v9, 0x9

    aput-object p3, v8, v9

    .line 391
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    if-nez v0, :cond_1

    .line 263
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    monitor-enter v1

    .line 264
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 269
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 309
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 310
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public static notifyLoggingObserver(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 475
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;->updateLogMessage(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method public static registerLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .prologue
    .line 455
    sput-object p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 454
    return-void
.end method

.method public static setConsoleLoggingEnable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 402
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 401
    return-void
.end method

.method public static setFileLoggingEnable(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "check":Z
    if-eqz p0, :cond_1

    .line 415
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string/jumbo v2, "CAELogger"

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->startLogging(Ljava/lang/String;)Z

    move-result v0

    .line 420
    .local v0, "check":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 421
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 411
    :cond_0
    return-void

    .line 417
    .local v0, "check":Z
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string/jumbo v2, "CAELogger"

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->stopLogging(Ljava/lang/String;)Z

    move-result v0

    .local v0, "check":Z
    goto :goto_0
.end method

.method public static setGrayBoxTestingEnable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 432
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    .line 431
    return-void
.end method

.method public static setLogOption(IZ)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "enableCaller"    # Z

    .prologue
    .line 444
    sput p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 445
    sput-boolean p1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    .line 443
    return-void
.end method

.method public static trace()V
    .locals 3

    .prologue
    .line 276
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 279
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public static unregisterLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .prologue
    .line 465
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 464
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 324
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 325
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method
