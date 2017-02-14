.class Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcMobileCashbee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcMobileCashbee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcMobileCashbee;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcMobileCashbee;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;->this$0:Lcom/samsung/android/settings/nfc/NfcMobileCashbee;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[NfcMobileCashbee]"

    const-string/jumbo v3, "[*] onReceive : ACTION_NFCADAPTER_STATE_CHANGE is received"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "[NfcMobileCashbee]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[*] onReceive : State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;->this$0:Lcom/samsung/android/settings/nfc/NfcMobileCashbee;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->-get0(Lcom/samsung/android/settings/nfc/NfcMobileCashbee;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
