.class Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;
.super Ljava/lang/Object;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v18

    monitor-enter v18

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    const-string/jumbo v19, "Collecting apps..."

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    const-string/jumbo v19, "Getting ApplicationInfo..."

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v18

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get4(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/pm/LauncherApps;

    move-result-object v15

    new-instance v19, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    const-string/jumbo v19, "  launchable activities:"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/LauncherActivityInfo;

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "    "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v18

    throw v15

    :cond_1
    :try_start_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "skip package : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v13, v5, v0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v9, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    const-string/jumbo v19, "Finish getting ApplicationInfo"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get9(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    const-string/jumbo v19, "Sorting apps... (sort by name)"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get9(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get9(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get7()Ljava/util/Comparator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-set0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get6(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/lang/Runnable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v6, v20, v16

    const-string/jumbo v15, "ShowHideButtonAppsSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Collected apps in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms, mRows.size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / mSortedRows.size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get9(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v18

    return-void
.end method
