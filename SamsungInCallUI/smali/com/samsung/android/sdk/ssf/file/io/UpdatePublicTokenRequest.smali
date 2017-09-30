.class public Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;
    }
.end annotation


# instance fields
.field private mAccessTokon:Ljava/lang/String;

.field private mBody:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;

.field private mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mExpiry:J

.field private mReqId:I

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mTouch:Z

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mTouch:Z

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mAccessTokon:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mBody:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;

    return-object v0
.end method

.method public getCallback()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mExpiry:J

    return-wide v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mReqId:I

    return v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mTouch:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mAccessTokon:Ljava/lang/String;

    return-void
.end method

.method public setBody(Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mBody:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest$Body;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setExpiry(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mExpiry:J

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mReqId:I

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method

.method public setTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mTouch:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenRequest;->mUid:Ljava/lang/String;

    return-void
.end method
