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
    .locals 3

    const-string/jumbo v0, "SafetyCareEmergencyMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mInitialCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get0(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SafetyCareEmergencyMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVideoCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get0(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method
