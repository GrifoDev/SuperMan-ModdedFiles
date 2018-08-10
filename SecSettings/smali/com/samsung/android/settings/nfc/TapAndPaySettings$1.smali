.class Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TapAndPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v7, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "TapAndPaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mReceiver.onReceive / action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v8, v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-set1(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v8, v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-set0(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/OtherSettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get6(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get3()I

    move-result v8

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get6(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get2()I

    move-result v8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "android.nfc.extra.ADAPTER_STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    :cond_5
    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_2

    :cond_7
    const-string/jumbo v7, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v4, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_2

    :cond_9
    const-string/jumbo v7, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "com.samsung.nfc.extra.SELECTED_COMPONENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.samsung.nfc.extra.SELECTED_STATUS"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v7, "lmrt_result"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->showLmrtFullDialog()V

    :cond_a
    if-eqz v4, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->restoreDefaultAppStatus(Z)Z

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v7

    invoke-virtual {v7, v6, v2, v1}, Lcom/samsung/android/settings/nfc/OtherSettings;->restoreOtherAppStatus(Landroid/content/ComponentName;ZZ)Z

    goto/16 :goto_2
.end method
