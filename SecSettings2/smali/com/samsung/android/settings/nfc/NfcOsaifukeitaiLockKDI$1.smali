.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiLockKDI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->-wrap1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->-wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V

    :cond_0
    return-void
.end method
