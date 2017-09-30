.class public Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkFileRequest"


# instance fields
.field private mBody:Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;

.field private mContentType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mInsertFolder:Z

.field private mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mPublishUrl:Z

.field private mReqId:I

.field private mRequestTag:Ljava/lang/Object;

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTargetCid:Ljava/lang/String;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mBody:Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mReqId:I

    return v0
.end method

.method public getRequestTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mRequestTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTargetCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mTargetCid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isInsertFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mInsertFolder:Z

    return v0
.end method

.method public isPublishUrl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mPublishUrl:Z

    return v0
.end method

.method public setBody(Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mBody:Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public setInsertFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mInsertFolder:Z

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setPublishUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mPublishUrl:Z

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mReqId:I

    return-void
.end method

.method public setRequestTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mRequestTag:Ljava/lang/Object;

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTargetCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mTargetCid:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
