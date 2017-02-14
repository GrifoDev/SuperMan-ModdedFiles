.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MIN_SEQUENTIAL_THREAD_ID:I = 0x3fffffff

.field private static final globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x4a8d593df3695196L

.field private static final threadIds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient needToInferCaller:Z

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    invoke-direct {p0}, Ljava/util/logging/LogRecord;->defaultThreadID()I

    move-result v0

    iput v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    return-void
.end method

.method private defaultThreadID()I
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide/32 v4, 0x3fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    long-to-int v1, v2

    return v1

    :cond_0
    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    sget-object v1, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private inferCaller()V
    .locals 8

    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v1, v6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v2, v6, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogRecord;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v3

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_0

    const-string/jumbo v7, "java.lang.reflect."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "sun.reflect."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "java.util.logging.Logger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.util.logging.LoggingProxyImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sun.util.logging."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LogRecord: bad version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    iput-object v9, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    :cond_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    return-void

    :cond_3
    new-array v6, v3, [Ljava/lang/Object;

    iput-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iput-object v9, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void

    :cond_0
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    :cond_0
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    :cond_0
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()I
    .locals 1

    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-void
.end method

.method public setMillis(J)V
    .locals 1

    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 1

    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    return-void
.end method

.method public setThreadID(I)V
    .locals 0

    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-void
.end method
