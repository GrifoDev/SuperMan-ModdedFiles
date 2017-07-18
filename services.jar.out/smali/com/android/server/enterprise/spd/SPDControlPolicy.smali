.class public Lcom/android/server/enterprise/spd/SPDControlPolicy;
.super Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;
.source "SPDControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final BROADCAST_AUTOUPDATE_CHANGED:Ljava/lang/String; = "com.policydm.intent.action.AUTOUPDATE"

.field private static final EXTRA_DATA:Ljava/lang/String; = "changed_data"

.field private static final EXTRA_MDM:Ljava/lang/String; = "mdm"

.field private static final SPDCONTROLPOLICY_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

.field private static final SPDCONTROLPOLICY_PERMISSION_OLD:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_SPDCONTROL"

.field private static final TAG:Ljava/lang/String; = "SPDControlPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mService:Lcom/samsung/android/knox/restriction/ISPDControlPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceOwnerOnlyAndSpdPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.enterprise.permission.MDM_SPDCONTROL"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/restriction/ISPDControlPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mService:Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "spd_control_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mService:Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mService:Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    return-object v0
.end method

.method private setAutoSecurityPolicyUpdateModeInternal(II)Z
    .locals 28

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v24, 0x0

    const/16 v22, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v25, "spdUpdate"

    const/16 v26, 0x0

    aput-object v25, v18, v26

    const-string/jumbo v25, "spdAdminUid"

    const/16 v26, 0x1

    aput-object v25, v18, v26

    const-string/jumbo v25, "spdDefaultValue"

    const/16 v26, 0x2

    aput-object v25, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SPDCONTROL"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v15

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v25, "spdUpdate"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "spdDefaultValue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v16

    :cond_1
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v25, "com.policydm.intent.action.AUTOUPDATE"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "changed_data"

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "mdm"

    const-string/jumbo v26, "mdm"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v17

    :cond_2
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    const-string/jumbo v25, "SPDControlPolicy"

    const-string/jumbo v26, "Multiple entries, not expected"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v25

    :cond_3
    const/16 v25, 0x0

    :try_start_2
    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdUpdate"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdAdminUid"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdDefaultValue"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v19, v26

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v19, v26

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v19, v26

    const-string/jumbo v25, "SPDControlPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setAutoSecurityPolicyUpdateModeInternal, currentValue = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", existAdminUid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", defaultValue = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p1

    if-eq v14, v0, :cond_4

    const-string/jumbo v25, "SPDControlPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setAutoSecurityPolicyUpdateModeInternal, existAdminUid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " does not match current uid, cannot make changes"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v25

    :cond_4
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "spdUpdate"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "spdDefaultValue"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    packed-switch p2, :pswitch_data_1

    :goto_3
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    :goto_4
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v25, "com.policydm.intent.action.AUTOUPDATE"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "changed_data"

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "mdm"

    const-string/jumbo v26, "mdm"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :try_start_4
    const-string/jumbo v25, "SPDControlPolicy"

    const-string/jumbo v26, "Exception in setAutoSecurityPolicyUpdateMode"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v17, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    :pswitch_0
    const/4 v12, 0x1

    move/from16 v23, v11

    goto :goto_3

    :pswitch_1
    const/16 v23, 0x3

    goto :goto_3

    :pswitch_2
    const/16 v23, 0x2

    goto/16 :goto_3

    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v16

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    :pswitch_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/16 v23, 0x3

    goto/16 :goto_0

    :pswitch_5
    const/16 v23, 0x2

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v25

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .locals 10

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    const/4 v6, 0x3

    :try_start_0
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "spdUpdate"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string/jumbo v6, "spdAdminUid"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string/jumbo v6, "spdDefaultValue"

    const/4 v7, 0x2

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "SPDCONTROL"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/spd/SPDControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "security_update_db"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    const/4 v3, 0x3

    :goto_0
    return v3

    :cond_1
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "spdUpdate"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SPDControlPolicy"

    const-string/jumbo v7, "Exception in getAutoSecurityPolicyUpdateMode"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, -0x1

    return v6
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->setAutoSecurityPolicyUpdateModeInternal(II)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public setAutoSecurityPolicyUpdateMode(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->enforceOwnerOnlyAndSpdPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->setAutoSecurityPolicyUpdateModeInternal(II)Z

    move-result v1

    return v1
.end method

.method public systemReady()V
    .locals 2

    const-string/jumbo v0, "SPDControlPolicy"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
