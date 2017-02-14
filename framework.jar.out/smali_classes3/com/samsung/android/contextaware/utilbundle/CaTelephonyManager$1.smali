.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/16 v1, -0x27

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state is unknown (state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    const/16 v1, -0x28

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-wrap1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-wrap1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-wrap1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-wrap2(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    :cond_0
    return-void
.end method
