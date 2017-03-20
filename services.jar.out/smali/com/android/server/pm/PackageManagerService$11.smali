.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[ILandroid/os/Bundle;Ljava/lang/String;ILandroid/content/IIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "GATE"

    const-string/jumbo v5, "<GATE-M> APP_INSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v5, 0x0

    aput-object v3, v10, v5

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    if-nez v3, :cond_a

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v19

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v24, v3

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    aget v15, v19, v24

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_3
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    if-lez v21, :cond_6

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_6

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v21

    const-string/jumbo v3, "android.intent.extra.UID"

    move/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_10

    :cond_7
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v19

    array-length v5, v0

    :goto_5
    if-ge v3, v5, :cond_10

    aget v22, v19, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GATE"

    const-string/jumbo v5, "<GATE-M> APP_UNINSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v18

    :cond_9
    :goto_6
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$11;->val$userIds:[I

    move-object/from16 v19, v0

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v3, :cond_f

    const/4 v13, 0x1

    :goto_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto/16 :goto_4

    :cond_f
    const/4 v13, 0x0

    goto :goto_7

    :catch_1
    move-exception v17

    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_13

    :try_start_3
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    if-eqz v23, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_8
    if-ge v3, v5, :cond_13

    aget v22, v23, v3

    const-string/jumbo v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v16, :cond_12

    :cond_11
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v6, v7, v0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_2
    move-exception v17

    :try_start_4
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v19

    array-length v5, v0

    :goto_a
    if-ge v3, v5, :cond_16

    aget v22, v19, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catch_3
    move-exception v17

    :try_start_6
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$11;->val$action:Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v3, :cond_9

    :try_start_7
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    if-eqz v23, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_b
    if-ge v3, v5, :cond_9

    aget v22, v23, v3

    const-string/jumbo v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v16, :cond_18

    :cond_17
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$11;->val$pkg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v6, v7, v0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_c

    :catch_4
    move-exception v17

    :try_start_8
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_6
.end method
