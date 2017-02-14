.class Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcReaderWriterP2P.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[NfcReaderWriterP2P]"

    const-string/jumbo v3, "[*] onReceive : ACTION_NFCADAPTER_RW_P2P_STATE_CHANGE is received"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "[NfcReaderWriterP2P]"

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

    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->-get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    if-ne v0, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->-get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->-get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne v0, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->-get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;->this$0:Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->-get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method
