.class Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;
.super Landroid/telephony/PhoneStateListener;
.source "SafetyCareEmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "SafetyCareEmergencyMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallStateChanged state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mInitialCallState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v5}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SafetyCareEmergencyMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVideoCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v5}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get3(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v3

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get0(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method
