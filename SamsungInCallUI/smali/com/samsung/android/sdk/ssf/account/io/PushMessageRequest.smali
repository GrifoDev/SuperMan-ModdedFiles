.class public Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private push_message:Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;

.field private receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

.field private target_sid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->mn:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->language:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->language:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPushMessage()Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->push_message:Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;

    return-object v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

    return-object v0
.end method

.method public getTargetSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->target_sid:I

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->language:Ljava/lang/String;

    return-void
.end method

.method public setPushMessage(Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->push_message:Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;

    return-void
.end method

.method public setReciverInformation([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

    return-void
.end method

.method public setTargetSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->target_sid:I

    return-void
.end method
