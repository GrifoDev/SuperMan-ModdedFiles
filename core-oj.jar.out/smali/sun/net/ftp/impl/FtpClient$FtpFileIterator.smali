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
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;
    .param p2, "p"    # Lsun/net/ftp/FtpDirParser;
    .param p3, "in"    # Ljava/io/BufferedReader;

    .prologue
    const/4 v0, 0x0

    .line 1809
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1805
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1806
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1810
    iput-object p3, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1811
    iput-object p2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1812
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1809
    return-void
.end method

.method private readNext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1816
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1817
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v2, :cond_0

    .line 1818
    return-void

    .line 1820
    :cond_0
    const/4 v1, 0x0

    .line 1823
    :cond_1
    :try_start_0
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1824
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1825
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    invoke-interface {v2, v1}, Lsun/net/ftp/FtpDirParser;->parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v2

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1826
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v2, :cond_2

    .line 1827
    return-void

    .line 1830
    :cond_2
    if-nez v1, :cond_1

    .line 1831
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .end local v1    # "line":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1815
    return-void

    .line 1832
    :catch_0
    move-exception v0

    .local v0, "iOException":Ljava/io/IOException;
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

    .prologue
    const/4 v1, 0x0

    .line 1852
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v0, :cond_1

    .line 1855
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1856
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1851
    return-void

    .line 1853
    :cond_1
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1838
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

    .prologue
    .line 1841
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->next()Lsun/net/ftp/FtpDirEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lsun/net/ftp/FtpDirEntry;
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1843
    .local v0, "ret":Lsun/net/ftp/FtpDirEntry;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1844
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1848
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
