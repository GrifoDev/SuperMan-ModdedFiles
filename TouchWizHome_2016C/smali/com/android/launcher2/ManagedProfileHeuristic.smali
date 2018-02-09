.class public Lcom/android/launcher2/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final INSTALLED_PACKAGES_PREFIX:Ljava/lang/String; = "installed_packages_for_user_"

.field private static final INSTALLED_PACKAGES_PREFIX_HOME_ONLY:Ljava/lang/String; = "home_only_installed_packages_for_user_"

.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"

.field private static final USER_FOLDER_ID_PREFIX:Ljava/lang/String; = "user_folder_"

.field private static final USER_FOLDER_ID_PREFIX_HOME_ONLY:Ljava/lang/String; = "home_only_user_folder_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomescreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher2/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lcom/android/launcher2/compat/UserHandleCompat;

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUserSerial:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getInstalledPackagesPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static changePackageList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    const-string v8, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getInstalledPackagesPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v5}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    const-string v8, "ManagedProfileHeuristic"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changePackageList user package key : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v11, "ManagedProfileHeuristic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changePackageList remove : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " add : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v3, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private finalizeAdditions(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/ManagedProfileHeuristic;->finalizeWorkFolder()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ManagedProfileHeuristic"

    const-string v1, "add work app to homescreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->addShortcutManagedProfile(Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :cond_0
    return-void
.end method

.method private finalizeWorkFolder()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher2/ManagedProfileHeuristic$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ManagedProfileHeuristic$1;-><init>(Lcom/android/launcher2/ManagedProfileHeuristic;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->findFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v14}, Lcom/android/launcher2/HomeFolderItem;->hasOption(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "ManagedProfileHeuristic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "work folder id is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". but work folder is not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v3, v11, v4}, Lcom/android/launcher2/LauncherModel;->makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v12

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v0

    invoke-direct {p0, v8, v9, v0}, Lcom/android/launcher2/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/LauncherModel;->addShortcutToFolder(Lcom/android/launcher2/HomeFolderItem;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "ManagedProfileHeuristic"

    const-string v1, "finalizeWorkFolder create a new folder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v2}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2, v14, v6, v0}, Lcom/android/launcher2/HomeFolderItem;->setOption(IZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6, v13, v6}, Lcom/android/launcher2/LauncherModel;->findVacantCell(Landroid/content/Context;ZZZ)[I

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v3, v11, v4}, Lcom/android/launcher2/LauncherModel;->makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v12

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v2, v11}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const/16 v3, -0x64

    aget v4, v7, v13

    aget v5, v7, v6

    aget v6, v7, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addAndBindWorkFolder(Landroid/content/Context;Lcom/android/launcher2/HomeFolderItem;IIII)V

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-direct {p0, v0, v1, v13}, Lcom/android/launcher2/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/ManagedProfileHeuristic;
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstalledPackagesPrefix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_installed_packages_for_user_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "installed_packages_for_user_"

    goto :goto_0
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getUserFolderIdPrefix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_user_folder_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_folder_"

    goto :goto_0
.end method

.method public static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v2, :cond_1

    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private markForAddition(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lcom/android/launcher2/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_1

    :cond_1
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private saveWorkFolderShortcuts(JI)V
    .locals 11

    const/4 v5, -0x1

    const-string v0, "ManagedProfileHeuristic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveWorkFolderShortcuts start index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    add-int/lit8 v8, p3, 0x1

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move p3, v8

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ManagedProfileHeuristic"

    const-string v8, "processPackageAdd but work folder is not exist in shared preference"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v5}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v6

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    array-length v10, p1

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v4, p1, v8

    const-string v7, "ManagedProfileHeuristic"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processPackageAdd : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v4, v7}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v7}, Lcom/android/launcher2/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v6}, Lcom/android/launcher2/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    goto :goto_0
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    const/4 v1, 0x0

    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    const-string v5, "ManagedProfileHeuristic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPackageRemoved : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mWorkFolderItems:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/launcher2/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v4

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v4}, Lcom/android/launcher2/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    :cond_2
    return-void
.end method
