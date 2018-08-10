.class Lcom/android/settings/datausage/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummary;->addUDSSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSaverPreference;->getDataSaverBackend()Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121c30

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummary$9$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageSummary$9$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary$9;)V

    const v3, 0x7f12052a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummary$9$2;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageSummary$9$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary$9;)V

    const v3, 0x7f120552

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v4
.end method
