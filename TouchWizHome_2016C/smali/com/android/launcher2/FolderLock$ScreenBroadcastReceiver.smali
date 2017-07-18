.class Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/FolderLock;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/FolderLock;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/FolderLock;Lcom/android/launcher2/FolderLock$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;-><init>(Lcom/android/launcher2/FolderLock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v5}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$200(Lcom/android/launcher2/FolderLock;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v37

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v37, :cond_2

    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v30

    if-eqz v30, :cond_3

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v32

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->itemsChanged()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string v4, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.intent.extra.SUBJECT"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    move-object/from16 v0, v35

    if-ne v0, v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v35, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherApplication;->setEnableFolderLock(Landroid/content/Context;)V

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFolderLockEnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    const-string v4, "Launcher.FolderLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->itemsChanged()V

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->itemsChanged()V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher2/MenuWidgetsLoader;->forceReload(Z)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string v4, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    if-eqz v20, :cond_c

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_c

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getPosition()I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v13

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2, v13}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    goto :goto_6

    :cond_b
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2, v13}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_6

    :cond_c
    if-eqz v20, :cond_f

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_f

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    if-gt v2, v4, :cond_f

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    monitor-enter p0

    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v28

    if-nez v28, :cond_10

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_10
    const/16 v16, 0x0

    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_11
    :goto_8
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    if-eqz v25, :cond_11

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_11

    move-object/from16 v13, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItemFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v2, v4, :cond_12

    if-eqz v28, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_12
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    if-eqz v28, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_13
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v4}, Lcom/android/launcher2/FolderLock;->access$300(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->findNearVacantCell(Landroid/content/Context;ZZZIII)[I

    move-result-object v19

    const-wide/16 v4, -0x64

    iput-wide v4, v13, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v2, 0x0

    aget v2, v19, v2

    iput v2, v13, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v2, 0x1

    aget v2, v19, v2

    iput v2, v13, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v2, 0x2

    aget v2, v19, v2

    iput v2, v13, Lcom/android/launcher2/HomeItem;->cellY:I

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v13, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    if-eqz v28, :cond_14

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;

    move-result-object v16

    :cond_14
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    const/4 v5, 0x0

    aget v5, v19, v5

    if-ne v4, v5, :cond_15

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_16
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_18

    if-eqz v28, :cond_17

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v23

    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v2

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    iget v6, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_8

    :cond_18
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_9

    :cond_1a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "menu_locked_items"

    check-cast v20, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_a

    :cond_1d
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "home_only_locked_items"

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "home_locked_items"

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string v4, "com.sec.android.launcher.intent.action.UNLOCK_FOLDER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v2, "folder_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v2, "folder_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v36, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_21
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_22
    :goto_b
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_23
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_26

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_25

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2, v12}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    goto :goto_c

    :cond_25
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v2, v12}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_c

    :cond_26
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_29

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_28
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    if-gt v2, v4, :cond_29

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_22

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v28

    const/16 v16, 0x0

    if-eqz v28, :cond_2a

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;

    move-result-object v16

    :cond_2a
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_2b
    :goto_e
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v4, v5}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v21

    if-eqz v21, :cond_2b

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2b

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItemFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v2, v4, :cond_2c

    if-eqz v28, :cond_2c

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_2c
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    if-eqz v28, :cond_2d

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_2d
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    monitor-enter p0

    :try_start_2
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$300(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    move-object/from16 v0, v21

    iget v11, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->findNearVacantCell(Landroid/content/Context;ZZZIII)[I

    move-result-object v19

    const-wide/16 v4, -0x64

    move-object/from16 v0, v25

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v2, 0x0

    aget v2, v19, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v2, 0x1

    aget v2, v19, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v2, 0x2

    aget v2, v19, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    if-eqz v28, :cond_2e

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;

    move-result-object v16

    :cond_2e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    const/4 v5, 0x0

    aget v5, v19, v5

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_30
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2b

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_32

    if-eqz v28, :cond_31

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v23

    if-eqz v23, :cond_31

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_31
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v2

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    iget v6, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_e

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_32
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_f

    :cond_34
    move-object/from16 v36, v20

    goto/16 :goto_b

    :cond_35
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/FolderItem;

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "menu_locked_items"

    check-cast v20, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_10

    :cond_37
    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "home_only_locked_items"

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_10

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v5, "home_locked_items"

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_10

    :cond_39
    if-eqz v36, :cond_3b

    move-object/from16 v2, v36

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v4, "menu_locked_items"

    check-cast v36, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    :cond_3a
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    goto/16 :goto_0

    :cond_3b
    if-eqz v36, :cond_3a

    move-object/from16 v2, v36

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v4, "home_only_locked_items"

    check-cast v36, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_11

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;->this$0:Lcom/android/launcher2/FolderLock;

    const-string v4, "home_locked_items"

    check-cast v36, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/launcher2/FolderLock;->access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V

    goto :goto_11
.end method
