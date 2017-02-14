.class Lcom/samsung/android/settings/nfc/NfcSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$2;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NfcSettings"

    const-string/jumbo v2, "Device received intent of SIM_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$2;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V

    :cond_0
    return-void
.end method
