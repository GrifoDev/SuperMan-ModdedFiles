.class public Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

.field protected receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->mn:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " values passed cannot be null.. deviceId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " imsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receive_info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->device_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->imsi:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->language:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->language:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthParams;->language:Ljava/lang/String;

    :cond_2
    return-void
.end method
