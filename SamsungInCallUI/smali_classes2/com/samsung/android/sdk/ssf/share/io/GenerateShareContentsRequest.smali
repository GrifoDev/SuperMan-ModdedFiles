.class public Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;
.super Ljava/lang/Object;


# instance fields
.field private mBody:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

.field private mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mContentsToken:Ljava/lang/String;

.field private mGcmType:Ljava/lang/String;

.field private mReqId:I

.field private mSendPush:Z

.field private mSilencePush:Z

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTag:Ljava/lang/Object;

.field private mTimeZone:Ljava/lang/String;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    return-object v0
.end method

.method public getCallback()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mContentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mGcmType:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mReqId:I

    return v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isSendPush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSendPush:Z

    return v0
.end method

.method public isSilencePush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSilencePush:Z

    return v0
.end method

.method public setBody(Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setContentsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mContentsToken:Ljava/lang/String;

    return-void
.end method

.method public setGcmType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mGcmType:Ljava/lang/String;

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mReqId:I

    return-void
.end method

.method public setSendPush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSendPush:Z

    return-void
.end method

.method public setSilencePush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSilencePush:Z

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
