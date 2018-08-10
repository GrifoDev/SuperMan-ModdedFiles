.class public Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZygoteState"
.end annotation


# instance fields
.field final abiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/DataInputStream;

.field mClosed:Z

.field final socket:Landroid/net/LocalSocket;

.field final writer:Ljava/io/BufferedWriter;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->socket:Landroid/net/LocalSocket;

    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->abiList:Ljava/util/List;

    return-void
.end method

.method public static connect(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    :try_start_0
    new-instance v7, Landroid/net/LocalSocketAddress;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, p0, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x100

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {v6, v4}, Landroid/os/ZygoteProcess;->-wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process: zygote socket "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " opened, supported ABIS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/os/ZygoteProcess$ZygoteState;

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v5, v4, v6, v8}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    return-object v7

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZygoteProcess"

    const-string/jumbo v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isClosed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->abiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
