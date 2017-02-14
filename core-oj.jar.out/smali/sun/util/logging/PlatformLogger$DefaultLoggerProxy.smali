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

    const/4 v0, 0x0

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    invoke-direct {p0, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    return-void
.end method

.method private deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lsun/util/logging/PlatformLogger;->-get0()Lsun/util/logging/PlatformLogger$Level;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private declared-synchronized format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    const-string/jumbo v2, ""

    if-eqz p3, :cond_0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->getCallerInfo()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x4

    aput-object p2, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    const-string/jumbo v1, "{0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo v1, "{1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    :cond_2
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

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

    return-object p1

    :catch_0
    move-exception v0

    return-object p1
.end method

.method private getCallerInfo()Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v2, "sun.util.logging.PlatformLogger"

    const/4 v3, 0x1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v8, v7

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v4, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v4, :cond_3

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

    :cond_3
    iget-object v7, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    return-object v7
.end method

.method private static outputStream()Ljava/io/PrintStream;
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method isEnabled()Z
    .locals 2

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

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

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

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    :cond_0
    return-void
.end method
