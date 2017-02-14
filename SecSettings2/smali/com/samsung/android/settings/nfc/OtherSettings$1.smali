.class Lcom/samsung/android/settings/nfc/OtherSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.nfc.extra.ADAPTER_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "ACTION_FELICA_LOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->finishFragment()V

    goto :goto_0
.end method
