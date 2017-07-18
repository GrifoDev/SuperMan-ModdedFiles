.class Lsun/net/ftp/impl/FtpClient$FtpFileIterator;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtpFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lsun/net/ftp/FtpDirEntry;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private eof:Z

.field private fparser:Lsun/net/ftp/FtpDirParser;

.field private in:Ljava/io/BufferedReader;

.field private nextFile:Lsun/net/ftp/FtpDirEntry;

.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method public constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    iput-object p3, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    iput-object p2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    return-void
.end method

.method private readNext()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    invoke-interface {v2, v1}, Lsun/net/ftp/FtpDirParser;->parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v2

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-nez v1, :cond_1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    return-void

    :cond_1
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->next()Lsun/net/ftp/FtpDirEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lsun/net/ftp/FtpDirEntry;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
