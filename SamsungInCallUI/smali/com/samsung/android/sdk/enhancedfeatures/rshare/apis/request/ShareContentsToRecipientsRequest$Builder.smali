.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentsToken:Ljava/lang/String;

.field private mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field private mReqId:I

.field private mSendPush:Z

.field private mSilencePush:Z

.field private mToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mContentsToken:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSilencePush:Z

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSendPush:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mReqId:I

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mUserData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mContentsToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentsToken is empty. please check value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toList is empty. please check value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mContentsToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSilencePush:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSendPush:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mReqId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mUserData:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0
.end method

.method public setContentsToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mContentsToken:Ljava/lang/String;

    return-object p0
.end method

.method public setGcmType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object p0
.end method

.method public setReqId(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mReqId:I

    return-object p0
.end method

.method public setSendPush(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSendPush:Z

    return-object p0
.end method

.method public setSilencePush(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mSilencePush:Z

    return-object p0
.end method

.method public setToList(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mToList:Ljava/util/List;

    return-object p0
.end method

.method public setUserData(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest$Builder;->mUserData:Landroid/os/Bundle;

    return-object p0
.end method
