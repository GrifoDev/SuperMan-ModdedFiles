.class Lcom/android/launcher2/Launcher$11;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$800(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/launcher2/HomeView;->updateRunning(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v13, "android.intent.action.USER_PRESENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0

    :cond_2
    const-string v13, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.RESPONSE_HOME_COUNT"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "HOME_ALL_COUNT"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v14}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/LauncherModel;->HomeViewCount()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13, v5}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v13, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->AllWidgetCount()I
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$1000(Lcom/android/launcher2/Launcher;)I

    move-result v9

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.RESPONSE_WIDGET_COUNT"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "WIDGET_ALL_COUNT"

    invoke-virtual {v5, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13, v5}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v13, "android.appwidget.action.APPWIDGET_INVALID_HOST_CALLBACKS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "Launcher"

    const-string v14, "-----ACTION_APPWIDGET_INVALID_HOST_CALLBACKS"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->onAppWidgetReset()V

    goto :goto_0

    :cond_5
    const-string v13, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "Launcher"

    const-string v14, "WallpaperChangeReceiver - Wallpaper Changed from ImageWallpaper"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "current_sec_home_theme_package"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "com.sec.Pink.common.home"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->setTextPageIndicatorColorIfNeeded()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->setStatusBarColorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuWidgets;->setDirtyCurrentPage()V

    goto/16 :goto_0

    :cond_7
    const-string v13, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_8
    move-object/from16 v4, p1

    move-object/from16 v6, p2

    new-instance v8, Lcom/android/launcher2/Launcher$11$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4, v6}, Lcom/android/launcher2/Launcher$11$1;-><init>(Lcom/android/launcher2/Launcher$11;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13, v8}, Lcom/android/launcher2/Launcher;->waitUntilDragEnd(Ljava/lang/Runnable;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v13, "com.samsung.sec.knox.EXTRA_PERSONA_ID"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "userId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_9
    :goto_1
    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    :cond_a
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/MenuWidgetsLoader;->forceReload(Z)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    goto :goto_1

    :cond_c
    const-string v13, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "zeroapp_package_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "zeroapp_class_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", className = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItemSingle(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPageAppName()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->unBindVirtualScreen()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->bindVirtualScreen()V

    goto/16 :goto_0

    :cond_d
    const-string v13, "edm.intent.action.changeUninstallStatus"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppModel;->getEnterprisePolicyBlockUninstallList()V

    goto/16 :goto_0
.end method
