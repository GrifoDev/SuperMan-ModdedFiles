.class Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
