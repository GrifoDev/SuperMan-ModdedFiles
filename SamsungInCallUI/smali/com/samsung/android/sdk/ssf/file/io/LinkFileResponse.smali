.class public Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected auth_code:Ljava/lang/String;

.field protected expired_time:Ljava/lang/Long;

.field protected max_upload_count:I

.field protected oid:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected public_token:Ljava/lang/String;

.field protected public_url:Ljava/lang/String;

.field protected revision:Ljava/lang/String;

.field protected size:Ljava/lang/Long;

.field protected timestamp:Ljava/lang/Long;

.field protected type:Ljava/lang/String;

.field protected upload_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->auth_code:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->expired_time:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxUploadCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->max_upload_count:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->public_token:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->public_url:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->public_url:Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->upload_count:I

    return v0
.end method
