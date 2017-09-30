.class public Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;
.super Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;


# instance fields
.field protected left_blocking_hour:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->left_blocking_hour:I

    return v0
.end method

.method public getStatusCode(I)I
    .locals 6

    const-wide v4, 0xee714673L

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/16 v0, 0x2afb

    :goto_0
    return v0

    :pswitch_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee714700L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Dormant user."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x4e29

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146ebL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "The device has not been authenticated."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x4e21

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146ffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Deactivated user."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/16 v0, 0x4e28

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee714687L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid request body."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/16 v0, 0x4e3e

    goto :goto_0

    :cond_8
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146e1L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid phone number."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/16 v0, 0x4e3f

    goto :goto_0

    :cond_a
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146d8L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid access_token."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/16 v0, 0x4e2a

    goto/16 :goto_0

    :cond_c
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146e2L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "The authentication code was requested, right before."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const/16 v0, 0x4e27

    goto/16 :goto_0

    :cond_e
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146e3L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "You have reached your daily SMS limit."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/16 v0, 0x4e25

    goto/16 :goto_0

    :cond_10
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146e4L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "You have reached your daily ACS limit."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/16 v0, 0x4e26

    goto/16 :goto_0

    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146d7L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee714abfL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid refresh_token."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const/16 v0, 0x4e22

    goto/16 :goto_0

    :cond_14
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146ecL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "The auth code is incorrect."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/16 v0, 0x4e24

    goto/16 :goto_0

    :cond_16
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Parameter device_id - required."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x4e36

    goto/16 :goto_0

    :cond_17
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Parameter csc - required."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x4e35

    goto/16 :goto_0

    :cond_18
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Parameter mcc - required."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x4e34

    goto/16 :goto_0

    :cond_19
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146efL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Unauthorized model_number."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const/16 v0, 0x4e40

    goto/16 :goto_0

    :cond_1b
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146a6L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid sid."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const/16 v0, 0x4e41

    goto/16 :goto_0

    :cond_1d
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0xee7146e5L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "You have reached your daily 2FA limit."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    const/16 v0, 0x4e2b

    goto/16 :goto_0

    :cond_1f
    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    const-wide v2, 0x95035af59L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    const-string v1, "Invalid guid."

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    const/16 v0, 0x4e42

    goto/16 :goto_0

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

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rcode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
