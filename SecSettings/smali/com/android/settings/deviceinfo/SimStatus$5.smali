.class Lcom/android/settings/deviceinfo/SimStatus$5;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap4(Lcom/android/settings/deviceinfo/SimStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap7(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method
