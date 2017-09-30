.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsUseInputStream:Z

.field private mUploadTokenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/io/File;)Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mUploadTokenUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mIsUseInputStream:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mContentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mContentType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFileSize:I

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mFileSize:I

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;

    move-result-object v0

    return-object v0
.end method

.method public extractCloudFile(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mContentType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->getState()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->getFileSize()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFileSize:I

    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mIsUseInputStream:Z

    return-object p0
.end method

.method public setInputStream(Ljava/io/InputStream;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mInputStream:Ljava/io/InputStream;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mInputStream:Ljava/io/InputStream;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mFileSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mIsUseInputStream:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public setUploadTokenUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;->mUploadTokenUrl:Ljava/lang/String;

    return-object p0
.end method
