.class public Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;
.super Ljava/io/FilterInputStream;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/ftp/FtpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FtpInputStream"
.end annotation


# instance fields
.field ftp:Lsun/net/ftp/FtpClient;

.field final synthetic this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;
    .param p2, "cl"    # Lsun/net/ftp/FtpClient;
    .param p3, "fd"    # Ljava/io/InputStream;

    .prologue
    .line 123
    iput-object p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;

    .line 124
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    .line 123
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 131
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->close()V

    .line 129
    :cond_0
    return-void
.end method
