.class Lcom/samsung/android/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get5(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v8

    if-ne p1, v8, :cond_2

    const-string/jumbo v8, "PrivacySettings"

    const-string/jumbo v9, "Collect Diagnostics Preference triggered"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->-get0()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.tmobile.pr.mytmobile"

    const-string/jumbo v9, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v8, v4}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v11

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.carrieriq.tmobile.IQToggle"

    const-string/jumbo v9, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get11(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v8

    if-ne p1, v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.easyMover"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    const v9, 0x7f121998

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const v10, 0x7f1208da

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/PrivacySettings$1$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/PrivacySettings$1$1;-><init>(Lcom/samsung/android/settings/PrivacySettings$1;)V

    const v10, 0x7f1211a1

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/PrivacySettings$1$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/PrivacySettings$1$2;-><init>(Lcom/samsung/android/settings/PrivacySettings$1;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-wrap1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.easyMover"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v8, "PrivacySettings"

    const-string/jumbo v9, "not found activity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    :try_start_4
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v8, v4}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get7(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-ne p1, v8, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_7
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get8(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-wrap3(Lcom/samsung/android/settings/PrivacySettings;)V

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get9(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;)V

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-get10(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/PrivacySettings;->-wrap5(Lcom/samsung/android/settings/PrivacySettings;)V

    goto/16 :goto_1
.end method
