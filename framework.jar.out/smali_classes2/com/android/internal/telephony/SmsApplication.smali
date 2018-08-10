.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final DEBUG_MULTIUSER:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final NEW_SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final NSRI_PACKAGE_NAME:Ljava/lang/String; = "com.tion.securitysms"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static mPendingDeliveryIntent:Landroid/app/PendingIntent;

.field private static sPackageNamePattern:[Ljava/lang/String;

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not have system signature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0xf

    invoke-virtual {p2, v5, v4, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v4, p3, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1

    const-string/jumbo v0, "sms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "smsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mmsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 13

    if-nez p0, :cond_0

    const-string/jumbo v9, "SmsApplication"

    const-string/jumbo v10, "getApplication: context is null!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_0
    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x0

    return-object v9

    :cond_1
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sms_default_application"

    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    :cond_2
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1040287

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v9, v10

    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    :cond_3
    if-eqz v1, :cond_4

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v9, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    :cond_4
    if-eqz v1, :cond_7

    const-string/jumbo v9, "appops"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-nez p1, :cond_5

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    if-ne v9, v10, :cond_6

    :cond_5
    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v11, 0xf

    invoke-virtual {v0, v11, v9, v10}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v10, "SmsApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " lost OP_WRITE_SMS: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p1, :cond_8

    const-string/jumbo v9, " (fixing)"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v9, v10, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v9, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    const-string/jumbo v9, "com.android.phone"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.bluetooth"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.mms.service"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.providers.telephony"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const/16 v9, 0x3e9

    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    :cond_7
    return-object v1

    :cond_8
    const-string/jumbo v9, " (no permission to fix)"

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v18

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string/jumbo v19, "android.permission.BROADCAST_SMS"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    :try_start_0
    new-instance v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v19, "SmsApplication"

    const-string/jumbo v20, "Error getting applicationName"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "application/vnd.wap.mms-message"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    const-string/jumbo v19, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_2

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string/jumbo v20, "smsto"

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_4

    const-string/jumbo v19, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    iget-object v7, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_4

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.SENDTO"

    const-string/jumbo v20, "smsto"

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_6

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_8

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_a

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "android.provider.Telephony.SIM_FULL"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_c

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_c

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_e

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v19

    if-nez v19, :cond_e

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    return-object v19
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v3
.end method

.method public static getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public static getEnableSecSms(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "com.android.mms"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    :try_start_1
    const-string/jumbo v4, "com.samsung.android.messaging"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    return v2
.end method

.method public static getPendingDeliveryIntent()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initPendingDeliveryIntent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "com.android.bluetooth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v5

    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getEnableSecSms(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "com.samsung.android.coreapps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SmsApplication"

    const-string/jumbo v3, "shouldWriteMessageForPackage is true for none SECSMS app model."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0xfa2

    if-eq v2, v3, :cond_7

    const/4 v1, 0x1

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    :cond_6
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    return v4

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    return v5
.end method

.method public static isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10700b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v1, "SmsApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_SupportHuxAvs"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_3
    const-string/jumbo v1, "SmsApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No PackageName Pattern : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    :try_start_0
    new-array v11, v2, [Ljava/lang/String;

    const-string/jumbo v2, "content://com.verizon.vzwavs.provider/apis"

    const/4 v3, 0x0

    aput-object v2, v11, v3

    const-string/jumbo v2, "content://com.verizon.vzwavs.mvs.provider/apis"

    const/4 v3, 0x1

    aput-object v2, v11, v3

    array-length v13, v11

    move v12, v1

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v10, v11, v12

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "VZWSMS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v9

    :cond_2
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v1, "SmsApplication"

    const-string/jumbo v2, "isVzwAuthorizedApp|exception while querying avs"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 11

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SENDTO"

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    invoke-static {p3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10040

    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    new-array v3, v9, [Landroid/content/ComponentName;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_0

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v2, 0x208000

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "SmsApplication"

    const-string/jumbo v2, "context in DefaultApplication is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v8, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p0, v4, v3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isChangeSmsDefaultAppAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isChangeSmsDefaultAppAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    if-nez v8, :cond_3

    const-string/jumbo v0, "SmsApplication"

    const-string/jumbo v2, "Block setDefaultApplication by admin"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    if-eqz p1, :cond_5

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_1
    invoke-static {p0, p1, v13}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    const-string/jumbo v0, "SmsApplication"

    const-string/jumbo v2, "context in DefaultApplication is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "sms_default_application"

    move/from16 v0, p2

    invoke-static {v13, v14, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz p0, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v10, :cond_6

    invoke-static {v3, v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string/jumbo v13, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    if-eqz v10, :cond_1

    const/4 v13, 0x0

    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v11, v10, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v14, 0xf

    const/4 v15, 0x1

    invoke-virtual {v1, v14, v13, v10, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string/jumbo v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "update the default app to : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " oldPackageName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsHQMAgent;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSDACInfoToHQM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "sms_default_application"

    iget-object v15, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move/from16 v0, p2

    invoke-static {v13, v14, v15, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-static {v11, v13, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v13

    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v15, 0xf

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v13, v14, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string/jumbo v13, "com.android.phone"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v13}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v13, "com.android.bluetooth"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v13}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v13, "com.android.mms.service"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v13}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v13, "com.android.providers.telephony"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v13}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const/16 v13, 0x3e9

    invoke-static {v1, v13}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    if-eqz v8, :cond_3

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v13, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v13, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v13, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v13, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v14, 0x10a

    move-object/from16 v0, p1

    invoke-static {v0, v14, v13}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Old SMS package not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static setPendingDeliveryIntent(Landroid/app/PendingIntent;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "SmsApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldWriteMessageForPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
