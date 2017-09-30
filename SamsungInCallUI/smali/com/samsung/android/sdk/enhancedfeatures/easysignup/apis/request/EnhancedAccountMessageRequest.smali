.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;
    }
.end annotation


# instance fields
.field private push_message:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;

.field private receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;

.field private target_sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPushMessage()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->push_message:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;

    return-object v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;

    return-object v0
.end method

.method public getTargetSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->target_sid:I

    return v0
.end method

.method public setPushMessage(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->push_message:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;

    return-void
.end method

.method public setReciverInformation([Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;

    return-void
.end method

.method public setTargetSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->target_sid:I

    return-void
.end method
