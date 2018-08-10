.class Lcom/android/systemui/power/PowerNotificationWarnings$26;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->updatePowerSharingCableAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$powerSharingDialogInfoSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->val$powerSharingDialogInfoSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->val$powerSharingDialogInfoSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v5, "DoNotShowPowerSharingPopup"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    const-string/jumbo v3, "com.sec.android.app.samsungapps.Main"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "directcall"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v5, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "GUID"

    const-string/jumbo v6, "com.samsung.android.app.powersharing_tablet"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v5, "GUID"

    const-string/jumbo v6, "com.samsung.android.app.powersharing"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "unknown package"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
