.class Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;
.super Ljava/lang/Object;
.source "SmartScanLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showFaceRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "showFaceRetryDialog dismissed! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->-get2(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->-wrap4(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->-wrap1(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    return-void
.end method
