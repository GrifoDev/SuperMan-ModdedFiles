.class public Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;
.super Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusCode(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/16 v0, 0x2afb

    :goto_0
    return v0

    :pswitch_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->rcode:J

    const-wide v2, 0xee7142f0L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid access_token."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/16 v0, 0x7532

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error [rcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->rcode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
