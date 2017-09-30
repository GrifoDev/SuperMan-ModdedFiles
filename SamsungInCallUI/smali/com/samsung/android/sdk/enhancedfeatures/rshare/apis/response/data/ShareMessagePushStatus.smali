.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;
.super Ljava/lang/Object;


# instance fields
.field private isNeedToSms:Z

.field private pushFailedReason:I

.field private pushable:Z

.field private receiverMsisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPushFailedReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->pushFailedReason:I

    return v0
.end method

.method public getReceiverMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->receiverMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedToSms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->isNeedToSms:Z

    return v0
.end method

.method public isPushable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->pushable:Z

    return v0
.end method

.method public setNeedToSms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->isNeedToSms:Z

    return-void
.end method

.method public setPushFailedReason(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->pushFailedReason:I

    return-void
.end method

.method public setPushable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->pushable:Z

    return-void
.end method

.method public setReceiverMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->receiverMsisdn:Ljava/lang/String;

    return-void
.end method
