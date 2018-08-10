.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    :cond_0
    if-ne v2, v6, :cond_4

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1216cc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f12187e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12187f

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1208e7

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1208e8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
