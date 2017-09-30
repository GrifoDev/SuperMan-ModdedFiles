.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileData"
.end annotation


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:I

.field private mInputStream:Ljava/io/InputStream;

.field private mIsUseInputStream:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mContentType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->isUseInputStream()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mIsUseInputStream:Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getFileSize()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileSize:I

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileSize:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isUseInputStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mIsUseInputStream:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFile:Ljava/io/File;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mFileSize:I

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->mInputStream:Ljava/io/InputStream;

    return-void
.end method
