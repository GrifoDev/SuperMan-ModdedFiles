.class public Lcom/absolute/android/persistservice/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;

.field static final synthetic b:Z


# instance fields
.field private c:Lcom/absolute/android/persistservice/u;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/v;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/v;->b:Z

    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/persistservice/v;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/absolute/android/persistservice/v;->e:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/absolute/android/persistservice/v;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    iput-object p2, p0, Lcom/absolute/android/persistservice/v;->d:Ljava/lang/String;

    new-instance v0, Lcom/absolute/android/persistservice/u;

    invoke-direct {v0, p1, p0, p2}, Lcom/absolute/android/persistservice/u;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1, v1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/u;Z)V

    return-void
.end method

.method protected static a(C)I
    .locals 1

    const/4 v0, 0x3

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_1
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    const-string/jumbo v0, ""

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    sget-boolean v2, Lcom/absolute/android/persistservice/v;->b:Z

    if-eqz v2, :cond_1

    :cond_0
    array-length v2, v1

    if-gt v2, v4, :cond_2

    :goto_0
    return-object v0

    :cond_1
    array-length v2, v1

    if-gt v2, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistence/LogEntry;)V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/absolute/android/persistservice/v;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getTimeStampUTC()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/absolute/android/dateutils/DateUtils;->encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getSeverity()I

    move-result v3

    invoke-static {v3}, Lcom/absolute/android/persistservice/v;->b(I)C

    move-result v3

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/absolute/android/persistservice/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-lt v0, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v2, Ljava/io/BufferedWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    aget-object v7, v5, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/absolute/android/persistservice/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "APS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persistence Service Logger writeToLogFile failed for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " . Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Re-initializing log."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/v;->b()V

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/u;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/u;Z)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->a()I

    move-result v1

    iput v1, p0, Lcom/absolute/android/persistservice/v;->e:I

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->b()I

    move-result v1

    iput v1, p0, Lcom/absolute/android/persistservice/v;->f:I

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/absolute/android/persistservice/v;->e:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    :goto_0
    iget v1, p0, Lcom/absolute/android/persistservice/v;->e:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "Persistence Service Logger initialization failed, logging to logcat only. Got exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    if-eqz p2, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Persistence Service Logger - initializing current log file to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method protected static b(I)C
    .locals 1

    const/16 v0, 0x20

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x56

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x44

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x49

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x57

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x45

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Ljava/io/File;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    iget v0, p0, Lcom/absolute/android/persistservice/v;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-boolean v2, Lcom/absolute/android/persistservice/v;->b:Z

    if-eqz v2, :cond_5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/absolute/android/persistservice/v;->e:I

    if-ge v0, v2, :cond_1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/io/File;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/absolute/android/persistservice/v;->e:I

    if-gt v0, v2, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_7

    :goto_1
    iput-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    iget-object v1, p0, Lcom/absolute/android/persistservice/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget v0, p0, Lcom/absolute/android/persistservice/v;->e:I

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/io/File;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/v;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .locals 1

    new-instance v0, Lcom/absolute/android/persistservice/t;

    invoke-direct {v0, p1, p0}, Lcom/absolute/android/persistservice/t;-><init>(ILcom/absolute/android/persistservice/v;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/absolute/android/persistservice/v;->a(C)I

    move-result v3

    if-ge v3, p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/absolute/android/dateutils/DateUtils;->decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ":"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/absolute/android/persistence/LogEntry;-><init>(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception parsing log file line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/absolute/android/persistservice/v;->e:I

    if-ge v0, v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Persistence Service Logger getNextOldestLogFile failed. Got exception: "

    invoke-virtual {p0, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-ltz p2, :cond_1

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/v;->e:I

    if-ne p1, v0, :cond_2

    :goto_0
    iget v0, p0, Lcom/absolute/android/persistservice/v;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_3

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NumLogs argument must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MaxSizeKB argument must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/absolute/android/persistservice/v;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iput p1, p0, Lcom/absolute/android/persistservice/v;->e:I

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    iget v1, p0, Lcom/absolute/android/persistservice/v;->e:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    :goto_2
    iput p2, p0, Lcom/absolute/android/persistservice/v;->f:I

    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->c:Lcom/absolute/android/persistservice/u;

    iget v1, p0, Lcom/absolute/android/persistservice/v;->f:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->b(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "APS"

    const-string/jumbo v1, "Maximum Log Size has been set to 0. This will turn off Peristence Service logging to file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid severity parameter for logMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    :try_start_1
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistence/LogEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo p3, ""

    goto :goto_0

    :cond_3
    const-string/jumbo p2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/v;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistence/LogEntry;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/v;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistence/LogEntry;)V

    return-void
.end method

.method protected declared-synchronized b(Ljava/io/File;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/v;->h:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/v;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/v;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistence/LogEntry;)V

    return-void
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/v;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/v;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistence/LogEntry;)V

    return-void
.end method
