.class Lcom/samsung/android/settings/nfc/PaymentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PaymentSettings"

    const-string/jumbo v4, "-------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mReceiver.onReceive / action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PaymentSettings"

    const-string/jumbo v4, "-------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "android.nfc.extra.ADAPTER_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v3, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->ActionRetry()V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "ACTION_FELICA_LOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->finishFragment()V

    goto :goto_0
.end method
