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
    .locals 15

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v10, v11, v12}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v13, "miscellaneous"

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v10, -0x3e8

    invoke-virtual {v2, v10}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v10, v11, v12, v2}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-boolean v10, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/applications/ResetAppsHelper;->-wrap0(Lcom/android/settings/applications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get2(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get0(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v10, 0x0

    array-length v11, v7

    :goto_3
    if-ge v10, v11, :cond_4

    aget v9, v7, v10

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v12, v3, :cond_3

    iget-object v12, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v12}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v11}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b00c3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const/16 v12, 0x41

    invoke-static {v10, v12, v11}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get6(Lcom/android/settings/applications/ResetAppsHelper;)Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/applications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/ResetAppsHelper;->-get6(Lcom/android/settings/applications/ResetAppsHelper;)Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;->onUpdateAfterResetApps()V

    :cond_5
    return-void

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method
