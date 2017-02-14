.class Lcom/android/settings/fingerprint/FingerprintSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBroadcastReceiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_AUTH_HUNTIP_CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get5(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get5(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method
