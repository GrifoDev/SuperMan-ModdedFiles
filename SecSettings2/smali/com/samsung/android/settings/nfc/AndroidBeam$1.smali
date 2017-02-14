.class Lcom/samsung/android/settings/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get0(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get0(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    const-string/jumbo v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get0(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get0(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    const-string/jumbo v1, "com.samsung.nfc.extra.ABEAM_STATE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v4, v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-wrap0(Lcom/samsung/android/settings/nfc/AndroidBeam;ZZ)V

    goto :goto_0
.end method
