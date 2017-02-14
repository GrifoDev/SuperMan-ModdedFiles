.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v4, "[S] onReceiveKDI"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    const-string/jumbo v3, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[*] onReceive : [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ] is received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V

    const-string/jumbo v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v4, "[E] onReceiveKDI"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
