.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;
.super Ljava/lang/Object;


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mInputStream:Ljava/io/InputStream;

.field private mLength:I

.field private mOffset:I

.field private mUrl:Ljava/lang/String;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->isUseInputStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mInputStream:Ljava/io/InputStream;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mContentType:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mFile:Ljava/io/File;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mContentType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mOffset:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mLength:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse$File;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mContentType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mOffset:I

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mLength:I

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mLength:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mOffset:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mFile:Ljava/io/File;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mLength:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mOffset:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadBinaryRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
