.class Lcom/samsung/android/emergencymode/SemEmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/SemEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "EmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_1
    const-string/jumbo v4, "enabled"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v4, "flag"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "skipdialog"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v8, :cond_6

    const/16 v4, 0x800

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-get1()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    :cond_2
    const/16 v4, 0x200

    if-eq v2, v4, :cond_3

    const/16 v4, 0x400

    if-ne v2, v4, :cond_5

    :cond_3
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-get2()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "EmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : trying to ON BCM|UPSM while BCM|UPMS not supported in this model. Flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v4, v1, v2, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-wrap0(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZ)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const-string/jumbo v4, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-get0(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    const/16 v2, 0x10

    iget-object v4, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/16 v2, 0x200

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v4, v1, v2, v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-wrap0(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZ)V

    goto :goto_0
.end method
