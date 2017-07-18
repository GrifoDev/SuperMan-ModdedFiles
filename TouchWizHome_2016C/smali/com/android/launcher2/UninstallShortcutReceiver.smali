.class public Lcom/android/launcher2/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# static fields
.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "UninstallShortcutReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    const-string v5, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v22, :cond_2

    if-nez v24, :cond_3

    :cond_2
    const-string v5, "UninstallShortcutReceiver"

    const-string v6, "Invalid uninstall shortcut intent "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Intent;

    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v5, "userid"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_11

    const-string v5, "com.samsung.knox.rcp.components"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v5, 0x64

    move/from16 v0, v28

    if-lt v0, v5, :cond_10

    move/from16 v0, v28

    int-to-long v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v9}, Lcom/android/launcher2/InstallShortcutReceiver;->convertToKnoxLiveIconActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;J)V

    :goto_1
    const-string v5, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v5, "duplicate"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v22, :cond_0

    if-eqz v25, :cond_0

    if-eqz v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, ""

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v10, " AND itemType=1"

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title IN (?,?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "intent"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "profileId"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v24, v8, v9

    const/4 v9, 0x1

    aput-object v26, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v21, Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v11, :cond_e

    :try_start_0
    const-string v5, "intent"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v5, "_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v5, "profileId"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    :cond_5
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_d

    :try_start_1
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-static {v13, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_7
    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_a

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-static {v13, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_9
    const/4 v12, 0x1

    :cond_a
    :goto_4
    if-eqz v12, :cond_5

    const/16 v5, 0x64

    move/from16 v0, v28

    if-lt v0, v5, :cond_b

    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v0, v28

    if-ne v5, v0, :cond_c

    :cond_b
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    if-nez v14, :cond_5

    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v5, "UninstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut will be removed : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v23

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel;->getHomeItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v16

    if-eqz v16, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    const-string v5, "UninstallShortcutReceiver"

    const-string v6, "Knox live icon but There is no knox id or normal knox icon"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v15

    :try_start_2
    const-string v5, "UninstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut error"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_14
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/launcher2/IconMoveContainer;->removeItem(Ljava/util/List;)V

    :cond_15
    const v5, 0x7f09000f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v24, v6, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V

    const v5, 0x7f09000f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v24, v6, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
