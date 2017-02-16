.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# static fields
.field private static final format:Ljava/lang/String;


# instance fields
.field private final dat:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lsun/util/logging/LoggingSupport;->getSimpleFormat()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v5, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 143
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 153
    .local v4, "throwable":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 154
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 156
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 159
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    :cond_1
    sget-object v5, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 162
    iget-object v7, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 163
    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 164
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 166
    const/4 v7, 0x4

    aput-object v0, v6, v7

    .line 167
    const/4 v7, 0x5

    aput-object v4, v6, v7

    .line 161
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 149
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "throwable":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2    # "source":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "source":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
