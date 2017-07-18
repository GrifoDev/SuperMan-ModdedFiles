.class Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorStream"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field is:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    return-void
.end method

.method public static getErrorStream(Ljava/io/InputStream;JLsun/net/www/http/HttpClient;)Ljava/io/InputStream;
    .locals 17

    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return-object v13

    :cond_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lsun/net/NetworkClient;->getReadTimeout()I

    move-result v11

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    move-result v13

    div-int/lit8 v13, v13, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_2

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get0()I

    move-result v13

    int-to-long v6, v13

    const/4 v9, 0x1

    :goto_0
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get0()I

    move-result v13

    int-to-long v14, v13

    cmp-long v13, v6, v14

    if-gtz v13, :cond_9

    long-to-int v5, v6

    new-array v2, v5, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_1
    :try_start_1
    array-length v13, v2

    sub-int/2addr v13, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-gez v10, :cond_4

    if-eqz v9, :cond_3

    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_5

    const/4 v13, 0x0

    return-object v13

    :cond_2
    move-wide/from16 v6, p1

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "the server closes before sending "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " bytes of data"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v4

    :try_start_4
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    move-result v13

    div-int/lit8 v13, v13, 0x5

    add-int/2addr v12, v13

    :goto_2
    if-ge v3, v5, :cond_1

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    move-result v13

    if-ge v12, v13, :cond_1

    goto :goto_1

    :cond_4
    add-int/2addr v3, v10

    goto :goto_2

    :cond_5
    int-to-long v14, v3

    cmp-long v13, v14, v6

    if-nez v13, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    if-eqz v9, :cond_8

    if-gez v10, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    new-instance v13, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;

    const/4 v14, 0x0

    invoke-static {v2, v14, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-direct {v13, v14}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v13

    :cond_8
    new-instance v13, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;

    const/4 v14, 0x0

    invoke-static {v2, v14, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v14, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;-><init>(Ljava/nio/ByteBuffer;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v13

    :cond_9
    const/4 v13, 0x0

    return-object v13

    :catch_1
    move-exception v8

    const/4 v13, 0x0

    return-object v13
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    if-ge v0, p3, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v1

    :cond_0
    move v1, p3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    return v2

    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2
.end method
