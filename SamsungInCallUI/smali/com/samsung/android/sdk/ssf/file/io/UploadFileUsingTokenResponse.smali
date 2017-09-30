.class public Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;
.super Ljava/lang/Object;


# instance fields
.field private content_range:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private image_resized:Z

.field private rcode:I

.field private rmsg:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent_range()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->content_range:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->rcode:I

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->rmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isImage_resized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileUsingTokenResponse;->image_resized:Z

    return v0
.end method
