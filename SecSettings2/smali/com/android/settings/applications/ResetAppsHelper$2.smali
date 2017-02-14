.class Lcom/android/settings/applications/ResetAppsHelper$2;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResetAppsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x200

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v8, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/settings/applications/ResetAppsHelper;->-wrap0(Lcom/android/settings/applications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v9, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get2(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v8, v10}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get0(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    array-length v10, v6

    move v8, v9

    :goto_4
    if-ge v8, v10, :cond_4

    aget v7, v6, v8

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v2, :cond_3

    iget-object v11, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v11}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v11

    invoke-virtual {v11, v7, v9}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1000f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/16 v10, 0x41

    invoke-static {v8, v10, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v8, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/ResetAppsHelper;->-get6(Lcom/android/settings/applications/ResetAppsHelper;)Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;->onUpdateAfterResetApps()V

    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
