.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;
    }
.end annotation


# instance fields
.field protected left_blocking_hour:I

.field protected receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->left_blocking_hour:I

    return v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;

    return-object v0
.end method

.method public setLeftBlockingHour(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->left_blocking_hour:I

    return-void
.end method

.method public setReciverInformation([Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnhancedAccountMessageResponse [ ReceiverInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->receiver_info:[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Blocking hours: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->left_blocking_hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
