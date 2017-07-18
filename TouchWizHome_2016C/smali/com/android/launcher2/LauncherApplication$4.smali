.class Lcom/android/launcher2/LauncherApplication$4;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$4;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 17

    const-string v2, "LauncherApplication"

    const-string v6, "galaxy labs setting changed!!!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherApplication$4;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "status"

    aput-object v6, v3, v2

    const-string v4, "packageName=? AND title=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "com.sec.android.app.launcher"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "home_screen_mode_only_home"

    aput-object v6, v5, v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->access$300()Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v2, "LauncherApplication"

    const-string v6, "galaxy labs cursor is null"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LauncherApplication"

    const-string v6, "galaxy labs cursor count is 0"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherApplication$4;->this$0:Lcom/android/launcher2/LauncherApplication;

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v14, 0x0

    invoke-virtual {v2, v6, v14}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v2, "galaxylabs_home_only_mode"

    const/4 v6, 0x0

    invoke-interface {v12, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "status"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v13, 0x1

    const-string v2, "LauncherApplication"

    const-string v6, "galaxy labs - home apps feature ON"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    if-eq v11, v13, :cond_0

    const-string v2, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "galaxy labs - change home apps mode : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v6, :cond_4

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v14, v15, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_5
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v2, "galaxylabs_home_only_mode"

    invoke-interface {v9, v2, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v13}, Lcom/android/launcher2/LauncherFeature;->setSupportHomeModeChange(Z)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/LauncherApplication;->sNeedModeChange:Z

    goto/16 :goto_0

    :cond_6
    :try_start_2
    const-string v2, "LauncherApplication"

    const-string v6, "galaxy labs - home apps feature OFF"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    :cond_8
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
