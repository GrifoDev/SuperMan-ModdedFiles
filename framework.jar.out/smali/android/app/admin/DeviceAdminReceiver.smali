.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# static fields
.field public static final ACTION_BUGREPORT_FAILED:Ljava/lang/String; = "android.app.action.BUGREPORT_FAILED"

.field public static final ACTION_BUGREPORT_SHARE:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARE"

.field public static final ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARING_DECLINED"

.field public static final ACTION_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_LOCK_TASK_ENTERING:Ljava/lang/String; = "android.app.action.LOCK_TASK_ENTERING"

.field public static final ACTION_LOCK_TASK_EXITING:Ljava/lang/String; = "android.app.action.LOCK_TASK_EXITING"

.field public static final ACTION_NETWORK_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.NETWORK_LOGS_AVAILABLE"

.field public static final ACTION_NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final ACTION_PASSWORD_EXPIRING:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_EXPIRING"

.field public static final ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final ACTION_PROFILE_PROVISIONING_COMPLETE:Ljava/lang/String; = "android.app.action.PROFILE_PROVISIONING_COMPLETE"

.field public static final ACTION_RECOVERY_PASSWORD_REQUESTED:Ljava/lang/String; = "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

.field public static final ACTION_SECURITY_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.SECURITY_LOGS_AVAILABLE"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.app.action.USER_ADDED"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.app.action.USER_REMOVED"

.field public static final BUGREPORT_FAILURE_FAILED_COMPLETING:I = 0x0

.field public static final BUGREPORT_FAILURE_FILE_NO_LONGER_AVAILABLE:I = 0x1

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_BUGREPORT_FAILURE_REASON:Ljava/lang/String; = "android.app.extra.BUGREPORT_FAILURE_REASON"

.field public static final EXTRA_BUGREPORT_HASH:Ljava/lang/String; = "android.app.extra.BUGREPORT_HASH"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_RESPONSE:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_SENDER_UID:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_URI:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field public static final EXTRA_LOCK_TASK_PACKAGE:Ljava/lang/String; = "android.app.extra.LOCK_TASK_PACKAGE"

.field public static final EXTRA_NETWORK_LOGS_COUNT:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

.field public static final EXTRA_NETWORK_LOGS_TOKEN:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

.field public static final EXTRA_SYSTEM_UPDATE_RECEIVED_TIME:Ljava/lang/String; = "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private mManager:Landroid/app/admin/DevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DevicePolicy"

    sput-object v0, Landroid/app/admin/DeviceAdminReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminReceiver;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 0

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v26

    if-eqz v26, :cond_0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v6, "android.app.extra.DISABLE_WARNING"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminReceiver;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "android.app.action.LOCK_TASK_ENTERING"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "android.app.extra.LOCK_TASK_PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v6, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v6, "android.app.action.BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "android.app.action.BUGREPORT_SHARE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, "android.app.extra.BUGREPORT_HASH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, "android.app.extra.BUGREPORT_FAILURE_REASON"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v6, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v6, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v6, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v6, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual/range {v13 .. v18}, Landroid/app/admin/DeviceAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v6, "android.app.action.USER_ADDED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v6, "android.app.action.USER_REMOVED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/DeviceAdminReceiver;->onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method public onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 0

    return-void
.end method

.method public onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method
