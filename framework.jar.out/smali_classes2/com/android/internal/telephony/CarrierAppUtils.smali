.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/content/ContentResolver;I)V
    .locals 9

    const-class v8, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V
    .locals 9

    const-class v8, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I[",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v16

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "carrier_apps_handled"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    const/16 v21, 0x1

    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    const/16 v20, 0x1

    :goto_2
    if-eqz v20, :cond_c

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v3, :cond_3

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    :cond_3
    const-string/jumbo v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): ENABLED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v3, p1

    move/from16 v7, p4

    move-object/from16 v8, p0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v3, :cond_6

    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    :cond_6
    const-string/jumbo v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update associated state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): ENABLED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v5, p1

    move/from16 v9, p4

    move-object/from16 v10, p0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v18

    const-string/jumbo v3, "CarrierAppUtils"

    const-string/jumbo v5, "Could not reach PackageManager"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_b
    :try_start_1
    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_d

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v3, :cond_d

    const-string/jumbo v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p4

    move-object/from16 v8, p0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_d
    if-nez v21, :cond_2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v3, :cond_e

    const-string/jumbo v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update associated state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move/from16 v9, p4

    move-object/from16 v10, p0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    :cond_f
    if-nez v21, :cond_10

    const-string/jumbo v3, "carrier_apps_handled"

    const/4 v5, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private static getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    const/4 v4, 0x0

    const v2, 0x8000

    :try_start_0
    invoke-interface {p0, p2, v2, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CarrierAppUtils"

    const-string/jumbo v3, "Could not reach PackageManager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v4
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_3

    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private static getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v7}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_3

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {p0, p1, v8}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method
