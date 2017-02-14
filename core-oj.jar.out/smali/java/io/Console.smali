.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$LineReader;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static cons:Ljava/io/Console;

.field private static echoOff:Z


# instance fields
.field private cs:Ljava/nio/charset/Charset;

.field private formatter:Ljava/util/Formatter;

.field private out:Ljava/io/Writer;

.field private pw:Ljava/io/PrintWriter;

.field private rcb:[C

.field private readLock:Ljava/lang/Object;

.field private reader:Ljava/io/Reader;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/io/Console;)[C
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    return-object v0
.end method

.method static synthetic -get1(Ljava/io/Console;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/Console;)[C
    .locals 1

    invoke-direct {p0}, Ljava/io/Console;->grow()[C

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/Console;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/io/Console;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, v1}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    invoke-static {}, Ljava/io/Console;->encoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    :cond_1
    iget-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    iget-object v3, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    invoke-static {p2, v2, v3}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    new-instance v2, Ljava/io/Console$1;

    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Ljava/io/Console$1;-><init>(Ljava/io/Console;Ljava/io/Writer;Z)V

    iput-object v2, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    invoke-direct {v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    new-instance v2, Ljava/io/Console$LineReader;

    iget-object v3, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    iget-object v4, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    invoke-static {p1, v3, v4}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/Console$LineReader;-><init>(Ljava/io/Console;Ljava/io/Reader;)V

    iput-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    const/16 v2, 0x400

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/io/Console;->rcb:[C

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static console()Ljava/io/Console;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljava/io/Console;->istty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/Console;

    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    :cond_0
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static native echo(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native encoding()Ljava/lang/String;
.end method

.method public static declared-synchronized getConsole()Ljava/io/Console;
    .locals 3

    const/4 v2, 0x0

    const-class v1, Ljava/io/Console;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/io/Console;->istty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/Console;

    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    :cond_0
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private grow()[C
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Ljava/io/Console;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v0, p0, Ljava/io/Console;->rcb:[C

    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    return-object v1
.end method

.method private static native istty()Z
.end method

.method private readline(Z)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    iget-object v3, p0, Ljava/io/Console;->rcb:[C

    iget-object v4, p0, Ljava/io/Console;->rcb:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    new-array v0, v1, [C

    if-lez v1, :cond_2

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    const/16 v3, 0x20

    invoke-static {v2, v5, v1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_2
    return-object v0

    :cond_3
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    return-object v1

    :catch_0
    move-exception v3

    :try_start_4
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public readPassword()[C
    .locals 2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .locals 8

    const/4 v2, 0x0

    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    const/4 v4, 0x1

    :try_start_3
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v3

    :try_start_6
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_7
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v4, 0x1

    :try_start_8
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_9
    throw v0

    :catch_3
    move-exception v3

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception v4

    const/4 v7, 0x1

    :try_start_a
    invoke-static {v7}, Ljava/io/Console;->echo(Z)Z

    move-result v7

    sput-boolean v7, Ljava/io/Console;->echoOff:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_b
    throw v0

    :catch_4
    move-exception v3

    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    throw v4

    :cond_3
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit v5

    return-object v2
.end method

.method public reader()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    return-object v0
.end method
