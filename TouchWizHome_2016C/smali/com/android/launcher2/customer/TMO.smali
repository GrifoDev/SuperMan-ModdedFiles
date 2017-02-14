.class public Lcom/android/launcher2/customer/TMO;
.super Ljava/lang/Object;
.source "TMO.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final HOME_FOLDER_NAME:Ljava/lang/String; = "T-Mobile"

.field public static final PREFS_TMO_APPSFOLDERID:Ljava/lang/String; = "TMOAppsFolderId"

.field public static final PREFS_TMO_HOMEFOLDERID:Ljava/lang/String; = "TMOHomeFolderId"

.field private static final TAG:Ljava/lang/String; = "CUSTOMER.TMO"

.field private static final TMO_ADAPT_CLASS_NAME:Ljava/lang/String; = "com.tmobile.pr.adapt"

.field private static mInstance:Lcom/android/launcher2/customer/TMO;


# instance fields
.field private mAppsFolderID:J

.field private mContext:Landroid/content/Context;

.field private mHomeFolderID:J

.field private mSupportHomeFolderAdapt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mHomeFolderID:J

    iput-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mAppsFolderID:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/customer/TMO;->mSupportHomeFolderAdapt:Z

    iput-object p1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/customer/TMO;
    .locals 2

    sget-object v0, Lcom/android/launcher2/customer/TMO;->mInstance:Lcom/android/launcher2/customer/TMO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/customer/TMO;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/customer/TMO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/customer/TMO;->mInstance:Lcom/android/launcher2/customer/TMO;

    :cond_0
    sget-object v0, Lcom/android/launcher2/customer/TMO;->mInstance:Lcom/android/launcher2/customer/TMO;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkAndAddAppItemToTmobileFolder(Lcom/android/launcher2/AppItem;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher2/customer/TMO;->mAppsFolderID:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-string v1, "CUSTOMER.TMO"

    const-string v2, "checkAndAddAppItemToTmobileFolder : No Tmobile folder exists;ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUSTOMER.TMO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndAddAppItemToTmobileFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/customer/TMO;->isInstalledByTmobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v2, p0, Lcom/android/launcher2/customer/TMO;->mAppsFolderID:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/launcher2/MenuAppModel;->addItemToFolder(Lcom/android/launcher2/AppItem;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkHomeFolderAdapt(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 26

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/launcher2/customer/TMO;->mHomeFolderID:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "com.tmobile.pr.adapt"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/launcher2/customer/TMO;->mHomeFolderID:J

    invoke-static {v4, v6, v7}, Lcom/android/launcher2/LauncherModel;->getHomeFolderById(Landroid/content/Context;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v14

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/launcher2/LauncherModel;->makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v15

    new-instance v23, Lcom/android/launcher2/customer/TMO$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/launcher2/customer/TMO$1;-><init>(Lcom/android/launcher2/customer/TMO;Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeFolderItem;Ljava/util/List;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const/4 v13, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget v4, v5, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    if-gez v4, :cond_4

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v8

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    iget-wide v6, v14, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v24, v13

    const-string v4, "CUSTOMER.TMO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeFolderAdapt - added new item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    iget v8, v5, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-static {v4, v0, v6}, Lcom/android/launcher2/LauncherModel;->addBulkItemToDatabase(Landroid/content/Context;[Landroid/content/ContentValues;Z)V

    goto/16 :goto_0
.end method

.method public disableAppsFolderAdapt()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMOAppsFolderId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "CUSTOMER.TMO"

    const-string v2, "disableAppsFolderAdapt"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableAppsFolderAdapt(J)V
    .locals 7

    iget-object v2, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TMOAppsFolderId"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "CUSTOMER.TMO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableAppsFolderAdapt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TMOAppsFolderID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/customer/TMO;->disableAppsFolderAdapt()V

    :cond_0
    return-void
.end method

.method public disableHomeFolderAdapt()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMOHomeFolderId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v3, p0, Lcom/android/launcher2/customer/TMO;->mSupportHomeFolderAdapt:Z

    const-string v1, "CUSTOMER.TMO"

    const-string v2, "disableHomeFolderAdapt"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableHomeFolderAdapt(J)V
    .locals 7

    iget-object v2, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TMOHomeFolderId"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "CUSTOMER.TMO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableHomeFolderAdapt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TMOHomeFolderID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/customer/TMO;->disableHomeFolderAdapt()V

    :cond_0
    return-void
.end method

.method public enableAppsFolderAdapt(J)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMOAppsFolderId"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "CUSTOMER.TMO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAppsFolderAdapt - enabled.:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableHomeFolderAdapt(Ljava/lang/String;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMOHomeFolderId"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "CUSTOMER.TMO"

    const-string v2, "enableHomeFolderAdapt - enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAppsFolderID()J
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TMOAppsFolderId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mAppsFolderID:J

    iget-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mAppsFolderID:J

    return-wide v0
.end method

.method public getHomeFolderID()J
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TMOHomeFolderId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mHomeFolderID:J

    iput-boolean v4, p0, Lcom/android/launcher2/customer/TMO;->mSupportHomeFolderAdapt:Z

    iget-wide v0, p0, Lcom/android/launcher2/customer/TMO;->mHomeFolderID:J

    return-wide v0
.end method

.method public isInstalledByTmobile(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUSTOMER.TMO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installerPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.tmobile.pr.adapt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setHomeFolderAdaptSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/customer/TMO;->mSupportHomeFolderAdapt:Z

    return-void
.end method

.method public supportHomeFolderAdapt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/customer/TMO;->mSupportHomeFolderAdapt:Z

    return v0
.end method
