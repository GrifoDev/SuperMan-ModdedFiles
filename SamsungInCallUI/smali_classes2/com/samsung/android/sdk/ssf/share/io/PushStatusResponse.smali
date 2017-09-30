.class public Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;
.super Ljava/lang/Object;


# instance fields
.field private need_to_sms:Z

.field private push_failed_reason:I

.field private pushable:Z

.field private to_msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPush_failed_reason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->push_failed_reason:I

    return v0
.end method

.method public getTo_msisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->to_msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public isNeed_to_sms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->need_to_sms:Z

    return v0
.end method

.method public isPushable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->pushable:Z

    return v0
.end method

.method public setNeed_to_sms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->need_to_sms:Z

    return-void
.end method

.method public setPush_failed_reason(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->push_failed_reason:I

    return-void
.end method

.method public setPushable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->pushable:Z

    return-void
.end method

.method public setTo_msisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/PushStatusResponse;->to_msisdn:Ljava/lang/String;

    return-void
.end method
