.class public Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;
.super Ljava/lang/Object;


# instance fields
.field protected left_blocking_hour:I

.field protected receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;->left_blocking_hour:I

    return v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

    return-object v0
.end method
