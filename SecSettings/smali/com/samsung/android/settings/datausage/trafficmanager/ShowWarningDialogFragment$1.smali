.class Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ShowWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const v4, 0x7f1213db

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    sput v2, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
