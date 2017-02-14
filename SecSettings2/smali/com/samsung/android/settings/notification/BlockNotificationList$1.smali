.class Lcom/samsung/android/settings/notification/BlockNotificationList$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    monitor-enter v28

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-string/jumbo v27, "BlockNotificationList"

    const-string/jumbo v29, "Collecting apps..."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v27

    if-nez v27, :cond_0

    monitor-exit v28

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get8(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;

    move-result-object v27

    new-instance v29, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v30

    invoke-direct/range {v29 .. v30}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v16

    const-string/jumbo v27, "BlockNotificationList"

    const-string/jumbo v29, "  launchable activities:"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    const-string/jumbo v27, "BlockNotificationList"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "    "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v27

    if-eqz v27, :cond_1

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->showBlockNotiication(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27

    :cond_2
    :try_start_2
    const-string/jumbo v27, "XPC"

    const-string/jumbo v29, "continue"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v20

    const-string/jumbo v27, "BlockNotificationList"

    const-string/jumbo v29, "  config activities:"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v27, "BlockNotificationList"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "    "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string/jumbo v27, "XPC"

    const-string/jumbo v29, "222 continue"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v29, 0x80

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v17

    const/4 v7, 0x0

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_7

    :try_start_3
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v29, 0x80

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string/jumbo v29, "com.samsung.android.notification.blockable"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_c

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get0(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v18, v29, v27

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get7(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    aget-object v18, v29, v27

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    :cond_c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v10, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13()Ljava/util/Comparator;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get12(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v8, v30, v24

    const-string/jumbo v27, "BlockNotificationList"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Collected "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " apps in "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " mSortedRows.size=="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v28

    return-void
.end method
