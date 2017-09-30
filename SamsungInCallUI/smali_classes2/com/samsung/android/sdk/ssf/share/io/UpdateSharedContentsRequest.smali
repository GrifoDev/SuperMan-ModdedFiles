.class public Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;
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

.field private mBody:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;

.field private mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mContentsToken:Ljava/lang/String;

.field private mReqId:I

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mTimeZone:Ljava/lang/String;

.field private mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field public to_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->contents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->contents:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->to_list:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->contents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;

    return-object v0
.end method

.method public getCallback()Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mContentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mReqId:I

    return v0
.end method

.method public getSsfClient()Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method public setBody(Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mBody:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mCallback:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method public setContentsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mContentsToken:Ljava/lang/String;

    return-void
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mReqId:I

    return-void
.end method

.method public setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->mTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-void
.end method
