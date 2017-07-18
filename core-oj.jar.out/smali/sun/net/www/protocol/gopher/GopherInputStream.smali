.class Lsun/net/www/protocol/gopher/GopherInputStream;
.super Ljava/io/FilterInputStream;
.source "GopherClient.java"


# instance fields
.field parent:Lsun/net/NetworkClient;


# direct methods
.method constructor <init>(Lsun/net/NetworkClient;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherInputStream;->parent:Lsun/net/NetworkClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/gopher/GopherInputStream;->parent:Lsun/net/NetworkClient;

    invoke-virtual {v1}, Lsun/net/NetworkClient;->closeServer()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
