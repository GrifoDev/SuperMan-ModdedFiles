.class public Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;
    }
.end annotation


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mBody:Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;

.field private mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mContentsToken:Ljava/lang/String;

.field private mGcmType:Ljava/lang/String;

.field private mReqId:I

.field private mSendPush:Z

.field private mSilencePush:Z

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTimeZone:Ljava/lang/String;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->contents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;

    return-object v0
.end method

.method public getCallback()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mContentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mGcmType:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mReqId:I

    return v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public isSendPush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSendPush:Z

    return v0
.end method

.method public isSilencePush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSilencePush:Z

    return v0
.end method

.method public setBody(Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setContentsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mContentsToken:Ljava/lang/String;

    return-void
.end method

.method public setGcmType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mGcmType:Ljava/lang/String;

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mReqId:I

    return-void
.end method

.method public setSendPush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSendPush:Z

    return-void
.end method

.method public setSilencePush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSilencePush:Z

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method
