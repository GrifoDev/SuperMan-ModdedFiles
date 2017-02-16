.class final Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultLoggerProxy"
.end annotation


# static fields
.field private static final formatString:Ljava/lang/String;


# instance fields
.field private date:Ljava/util/Date;

.field volatile effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

.field volatile level:Lsun/util/logging/PlatformLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    .line 555
    sput-object v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    .line 468
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    .line 482
    invoke-direct {p0, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 483
    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 480
    return-void
.end method

.method private deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;
    .locals 0
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .prologue
    .line 528
    if-nez p1, :cond_0

    invoke-static {}, Lsun/util/logging/PlatformLogger;->-get0()Lsun/util/logging/PlatformLogger$Level;

    move-result-object p1

    .end local p1    # "level":Lsun/util/logging/PlatformLogger$Level;
    :cond_0
    return-object p1
.end method

.method private declared-synchronized format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v3, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 562
    const-string/jumbo v2, ""

    .line 563
    .local v2, "throwable":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 564
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 565
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 566
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 567
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 568
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 569
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    sget-object v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 573
    iget-object v5, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 574
    invoke-direct {p0}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->getCallerInfo()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 575
    iget-object v5, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 576
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 577
    const/4 v5, 0x4

    aput-object p2, v4, v5

    .line 578
    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 572
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v2    # "throwable":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 535
    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2

    if-nez v1, :cond_1

    .line 537
    :cond_0
    return-object p1

    .line 544
    :cond_1
    const-string/jumbo v1, "{0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo v1, "{1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 546
    :cond_2
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 545
    :cond_3
    const-string/jumbo v1, "{2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo v1, "{3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gez v1, :cond_2

    .line 548
    return-object p1

    .line 549
    :catch_0
    move-exception v0

    .line 551
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method private getCallerInfo()Ljava/lang/String;
    .locals 11

    .prologue
    .line 584
    const/4 v4, 0x0

    .line 585
    .local v4, "sourceClassName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 587
    .local v5, "sourceMethodName":Ljava/lang/String;
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    .line 589
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "sun.util.logging.PlatformLogger"

    .line 590
    .local v2, "logClassName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 591
    .local v3, "lookingForLogger":Z
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v8, v7

    .line 592
    .local v1, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "cname":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 596
    const/4 v3, 0x0

    .line 591
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 601
    move-object v4, v0

    .line 602
    .local v4, "sourceClassName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 608
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v4    # "sourceClassName":Ljava/lang/String;
    .end local v5    # "sourceMethodName":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 611
    :cond_3
    iget-object v7, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    return-object v7
.end method

.method private static outputStream()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-direct {p0, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "newMsg":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 514
    .end local v0    # "newMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method isEnabled()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 523
    .local v0, "effectiveLevel":Lsun/util/logging/PlatformLogger$Level;
    invoke-virtual {p1}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    .prologue
    .line 495
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 496
    .local v0, "oldLevel":Lsun/util/logging/PlatformLogger$Level;
    if-eq v0, p1, :cond_0

    .line 497
    iput-object p1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 498
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 494
    :cond_0
    return-void
.end method
