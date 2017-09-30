.class public Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field protected ccc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->device_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->imsi:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->ccc:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->phone_number:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->language:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->phone_number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->ccc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->language:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ccc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->language:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;->language:Ljava/lang/String;

    :cond_2
    return-void
.end method
