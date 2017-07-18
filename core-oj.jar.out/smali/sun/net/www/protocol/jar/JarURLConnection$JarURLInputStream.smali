.class Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JarURLInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/jar/JarURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-virtual {v0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-static {v0}, Lsun/net/www/protocol/jar/JarURLConnection;->-get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-virtual {v1}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-static {v1}, Lsun/net/www/protocol/jar/JarURLConnection;->-get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    :cond_1
    throw v0
.end method
