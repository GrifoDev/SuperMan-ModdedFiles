.class Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpInputStream"
.end annotation


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x1fa0


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field private inCache:I

.field private markCount:I

.field private marked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private skipBuffer:[B

.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2956
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 2957
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2952
    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    .line 2953
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    .line 2954
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    .line 2958
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 2959
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    .line 2956
    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V
    .locals 3
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "cacheRequest"    # Ljava/net/CacheRequest;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2962
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 2963
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2952
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    .line 2953
    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    .line 2954
    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    .line 2964
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 2966
    :try_start_0
    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2962
    :goto_0
    return-void

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    .line 2969
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 2970
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3115
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 3116
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3117
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    .line 3122
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3129
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iput-object v3, v1, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 3130
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    .line 3113
    return-void

    .line 3119
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3123
    :catch_0
    move-exception v0

    .line 3124
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v1, :cond_2

    .line 3125
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    .line 3127
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3128
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 3129
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iput-object v3, v2, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 3130
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    .line 3128
    throw v1
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    .line 2993
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 2994
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 2995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    .line 2996
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2992
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3033
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [B

    .line 3034
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([B)I

    move-result v2

    .line 3035
    .local v2, "ret":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .end local v2    # "ret":I
    :goto_0
    return v2

    .restart local v2    # "ret":I
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v3, 0xff

    goto :goto_0

    .line 3036
    .end local v0    # "b":[B
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 3037
    .local v1, "ioex":Ljava/io/IOException;
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v3, :cond_1

    .line 3038
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    .line 3040
    :cond_1
    throw v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3046
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3052
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 3055
    .local v2, "newLen":I
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    if-lez v3, :cond_4

    .line 3056
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    if-lt v3, v2, :cond_2

    .line 3057
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    sub-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    .line 3058
    const/4 v1, 0x0

    .line 3066
    .local v1, "nWrite":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    .line 3067
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    sub-int v4, v2, v1

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 3068
    :cond_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    if-eqz v3, :cond_1

    .line 3069
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    .line 3071
    :cond_1
    return v2

    .line 3060
    .end local v1    # "nWrite":I
    :cond_2
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    sub-int v1, v2, v3

    .line 3061
    .restart local v1    # "nWrite":I
    const/4 v3, 0x0

    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3072
    .end local v1    # "nWrite":I
    .end local v2    # "newLen":I
    :catch_0
    move-exception v0

    .line 3073
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v3, :cond_3

    .line 3074
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    .line 3076
    :cond_3
    throw v0

    .line 3064
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "newLen":I
    :cond_4
    move v1, v2

    .restart local v1    # "nWrite":I
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 3023
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 3024
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 3025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    .line 3026
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 3022
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 3089
    move-wide v2, p1

    .line 3091
    .local v2, "remaining":J
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    if-nez v4, :cond_0

    .line 3092
    const/16 v4, 0x1fa0

    new-array v4, v4, [B

    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    .line 3094
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    .line 3096
    .local v0, "localSkipBuffer":[B
    cmp-long v4, p1, v6

    if-gtz v4, :cond_2

    .line 3097
    return-wide v6

    .line 3106
    .local v1, "nr":I
    :cond_1
    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 3100
    .end local v1    # "nr":I
    :cond_2
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 3102
    const-wide/16 v4, 0x1fa0    # 4.0E-320

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 3101
    invoke-virtual {p0, v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    move-result v1

    .line 3103
    .restart local v1    # "nr":I
    if-gez v1, :cond_1

    .line 3109
    .end local v1    # "nr":I
    :cond_3
    sub-long v4, p1, v2

    return-wide v4
.end method
