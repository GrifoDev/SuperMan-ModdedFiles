.class Lcom/android/settings/SecAirplaneModeEnabler$3;
.super Landroid/telephony/PhoneStateListener;
.source "SecAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecAirplaneModeEnabler;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/settings/SecAirplaneModeEnabler;Ljava/lang/Integer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    iput p3, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->val$subId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    iget v2, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->val$subId:I

    invoke-static {v1, v2}, Lcom/android/settings/SecAirplaneModeEnabler;->-wrap0(Lcom/android/settings/SecAirplaneModeEnabler;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/SecAirplaneModeEnabler;->-get1(Lcom/android/settings/SecAirplaneModeEnabler;)[I

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/SecAirplaneModeEnabler;->-get1(Lcom/android/settings/SecAirplaneModeEnabler;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/SecAirplaneModeEnabler;->-get2(Lcom/android/settings/SecAirplaneModeEnabler;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/SecAirplaneModeEnabler;->-get1(Lcom/android/settings/SecAirplaneModeEnabler;)[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/SecAirplaneModeEnabler;->-set0(Lcom/android/settings/SecAirplaneModeEnabler;Z)Z

    invoke-static {}, Lcom/android/settings/SecAirplaneModeEnabler;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cellularVoice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SecAirplaneModeEnabler$3;->this$0:Lcom/android/settings/SecAirplaneModeEnabler;

    invoke-static {v3}, Lcom/android/settings/SecAirplaneModeEnabler;->-get2(Lcom/android/settings/SecAirplaneModeEnabler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
