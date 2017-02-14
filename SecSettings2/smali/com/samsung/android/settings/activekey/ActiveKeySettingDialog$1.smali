.class Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;
.super Ljava/lang/Object;
.source "ActiveKeySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$ActiveKeySettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->finish()V

    return-void
.end method
