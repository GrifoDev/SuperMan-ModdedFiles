.class public Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;
.super Ljava/lang/Object;


# instance fields
.field protected auth_code:Ljava/lang/String;

.field protected chunk_count:Ljava/lang/String;

.field protected expired_time:Ljava/lang/Long;

.field protected multiParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPart;",
            ">;"
        }
    .end annotation
.end field

.field public mupload_key:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field public public_url:Ljava/lang/String;

.field protected revision:Ljava/lang/String;

.field protected size:Ljava/lang/Long;

.field public tag:Ljava/lang/String;

.field protected timestamp:Ljava/lang/Long;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->multiParts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->auth_code:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->expired_time:Ljava/lang/Long;

    return-object v0
.end method

.method public getMultiPartCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->chunk_count:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->multiParts:Ljava/util/List;

    return-object v0
.end method

.method public getMuploadKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->mupload_key:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->public_url:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->public_url:Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->type:Ljava/lang/String;

    return-object v0
.end method
