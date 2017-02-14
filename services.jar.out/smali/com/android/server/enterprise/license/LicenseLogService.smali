.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$1;,
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

.field private static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field private static final MSG_LOG_API:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->initializeHandlerThread()V

    return-void
.end method

.method private _log(Ljava/lang/String;I)V
    .locals 11

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v7, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "pkgName"

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "id"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "date"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    sget-object v7, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "value"

    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v7, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :goto_0
    return-void

    :cond_1
    sget-object v7, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v7, "LicenseLogService"

    const-string/jumbo v10, "_log() failed"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LicenseLogService"

    const-string/jumbo v10, "_log() failed"

    invoke-static {v7, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v3

    sget-object v2, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "LICENSE_LOG"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14

    const/4 v13, 0x0

    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v11, "date"

    const/4 v12, 0x0

    aput-object v11, v0, v12

    const-string/jumbo v11, "id"

    const/4 v12, 0x1

    aput-object v11, v0, v12

    const-string/jumbo v11, "value"

    const/4 v12, 0x2

    aput-object v11, v0, v12

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v2, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "LICENSE_LOG"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v11, "date"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "id"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "value"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v11, "LicenseLogService"

    const-string/jumbo v12, "getLog() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "LicenseLogService"

    const-string/jumbo v12, "getLog() failed"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    return-object v9
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleLicenseLogCleanNotification()V
    .locals 22

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification()"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v13, 0xb

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xc

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xd

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xe

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide v18, 0x9a7ec800L

    sub-long v14, v10, v18

    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "date<=?"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v13, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v18, "LICENSE_LOG"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    add-long v4, v10, v18

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "alarm"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/high16 v20, 0x48000000    # 131072.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_2
    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    add-long v4, v10, v18

    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "alarm"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/high16 v20, 0x48000000    # 131072.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_2
    move-exception v8

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "LicenseLogService"

    const-string/jumbo v18, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    add-long v4, v10, v18

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/high16 v21, 0x48000000    # 131072.0f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    :catch_3
    move-exception v8

    const-string/jumbo v18, "LicenseLogService"

    const-string/jumbo v19, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "LicenseLogService"

    const-string/jumbo v19, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private initializeHandlerThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LicenseLogService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-void
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v4, 0x2710

    if-lt v0, v4, :cond_2

    const/16 v4, 0x4e1f

    if-le v0, v4, :cond_3

    :cond_2
    return-void

    :cond_3
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "apiName"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "adminUid"

    iget v5, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "LicenseLogService"

    const-string/jumbo v5, "log() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LicenseLogService"

    const-string/jumbo v5, "log() failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
