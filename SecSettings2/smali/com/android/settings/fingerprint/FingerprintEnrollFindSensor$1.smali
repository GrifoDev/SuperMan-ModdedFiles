.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-get0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-get1(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    :cond_0
    return-void
.end method
