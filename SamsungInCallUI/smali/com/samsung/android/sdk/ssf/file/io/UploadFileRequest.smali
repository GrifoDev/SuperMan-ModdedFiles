.class public Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;
.super Ljava/lang/Object;


# instance fields
.field private mCid:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mFileLength:I

.field private mFileName:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mInsertFolder:Z

.field private mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mProgressWhat:I

.field private mPublishUrl:Z

.field private mRefreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

.field private mReqId:I

.field private mRequestTag:Ljava/lang/Object;

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFileLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getProgressWhat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mProgressWhat:I

    return v0
.end method

.method public getRefreshIsListener()Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mRefreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mReqId:I

    return v0
.end method

.method public getRequestTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mRequestTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isInsertFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mInsertFolder:Z

    return v0
.end method

.method public isPublishUrl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mPublishUrl:Z

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mCid:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setFileLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFileLength:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setInsertFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mInsertFolder:Z

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setProgressWhat(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mProgressWhat:I

    return-void
.end method

.method public setPublishUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mPublishUrl:Z

    return-void
.end method

.method public setRefreshIsListener(Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mRefreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mReqId:I

    return-void
.end method

.method public setRequestTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mRequestTag:Ljava/lang/Object;

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
