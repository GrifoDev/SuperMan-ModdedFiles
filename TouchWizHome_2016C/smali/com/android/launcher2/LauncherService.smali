.class public Lcom/android/launcher2/LauncherService;
.super Landroid/app/IntentService;
.source "LauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherService$Result;
    }
.end annotation


# static fields
.field private static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field public static final REQUEST_MAKE_DISABLE_APP_LIST:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_MAKE_DISABLE_APP_LIST"

.field private static final TAG:Ljava/lang/String; = "LauncherService"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_COLUMNS:Ljava/lang/String; = "Columns"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOMEONLY:Ljava/lang/String; = "homeOnly"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_HOTSEAT_HOMEONLY:Ljava/lang/String; = "hotseat_homeOnly"

.field private static final TAG_PAGECOUNT:Ljava/lang/String; = "PageCount"

.field private static final TAG_ROWS:Ljava/lang/String; = "Rows"

.field private static final TAG_SCREEN_INDEX:Ljava/lang/String; = "ScreenIndex"

.field private static final TAG_ZEROPAGE:Ljava/lang/String; = "zeroPage"

.field private static bEncryption:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static mIsCurrentDBHomeOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherService;->bEncryption:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherService;->mIsCurrentDBHomeOnlyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LauncherService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized RestoreHomescreenLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 30

    const-class v26, Lcom/android/launcher2/LauncherService;

    monitor-enter v26

    :try_start_0
    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RestoreHomescreenLayout source: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RestoreHomescreenLayout path: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "LauncherService"

    const-string v27, "saveKey is Empty"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v26

    return-void

    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/homescreen.exml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_2

    const-string v25, "LauncherService"

    const-string v27, "not restore, because Restore file not exist"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    :cond_2
    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    :try_start_2
    sget-boolean v25, Lcom/android/launcher2/LauncherService;->bEncryption:Z

    if-eqz v25, :cond_8

    const-string v25, "SCLOUD"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v11, v0, v1}, Lcom/android/launcher2/LauncherService;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v12

    move-object v10, v11

    :goto_1
    if-eqz v12, :cond_1a

    const/16 v25, 0x3ec

    move/from16 v0, p5

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    :try_start_4
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/homescreen_original.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v17, 0x0

    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->createNewFile()Z

    :cond_3
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v5, 0x0

    :goto_2
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catch_0
    move-exception v6

    move-object/from16 v17, v18

    :goto_3
    :try_start_7
    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "debug mode error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v12, :cond_4

    :try_start_8
    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_4
    if-eqz v10, :cond_5

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_5
    if-eqz v17, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :goto_4
    if-eqz v12, :cond_7

    :try_start_9
    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_7
    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_a
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v12, v13

    goto/16 :goto_1

    :cond_9
    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_a
    if-eqz v10, :cond_b

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_b
    if-eqz v18, :cond_1e

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    move-object/from16 v17, v18

    goto :goto_4

    :catchall_1
    move-exception v25

    :goto_5
    if-eqz v12, :cond_c

    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_c
    if-eqz v10, :cond_d

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_d
    if-eqz v17, :cond_e

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_e
    throw v25
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_1
    move-exception v6

    :goto_6
    const/16 v22, 0x1

    const/4 v7, 0x2

    :try_start_b
    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "file exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v12, :cond_f

    :try_start_c
    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_f
    if-eqz v10, :cond_10

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_10
    :goto_7
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    if-lez v7, :cond_11

    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "result: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", err_code: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v25, "SCLOUD"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_12

    new-instance v21, Landroid/content/Intent;

    const-string v25, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v25, "RESULT"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v25, "ERR_CODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v25, "REQ_SIZE"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v25, "SOURCE"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_12
    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v14

    if-nez v14, :cond_1b

    const/16 v25, 0x1

    :goto_8
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherApplication;->writeHomeOnlyModeEnabled(Z)V

    if-nez v14, :cond_1c

    const/16 v25, 0x1

    :goto_9
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/LauncherProvider;->modeSwitch(Z)Z

    move-result v25

    if-eqz v25, :cond_0

    new-instance v16, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v25, Lcom/android/launcher2/LauncherService$1;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v14}, Lcom/android/launcher2/LauncherService$1;-><init>(Lcom/android/launcher2/LauncherApplication;Z)V

    const-wide/16 v28, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :cond_13
    :try_start_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    const-string v25, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v25

    if-eqz v25, :cond_14

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v25

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    :cond_14
    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v20

    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider;->restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v23

    :goto_a
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    const/16 v22, 0x1

    const/4 v7, 0x1

    :cond_15
    :goto_b
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_c
    if-eqz v12, :cond_16

    :try_start_f
    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_16
    if-eqz v10, :cond_10

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :cond_17
    const/16 v23, -0x1

    :try_start_10
    const-string v25, "LauncherService"

    const-string v27, "getLauncherProvider() is null"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    :catch_2
    move-exception v6

    const/16 v22, 0x1

    const/4 v7, 0x1

    :try_start_11
    const-string v25, "LauncherService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DB Input exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v25

    :goto_d
    if-eqz v12, :cond_18

    :try_start_12
    invoke-static {v12}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_18
    if-eqz v10, :cond_19

    invoke-static {v10}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/InputStream;)V

    :cond_19
    throw v25
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_1a
    const/16 v22, 0x1

    const/4 v7, 0x2

    :try_start_13
    const-string v25, "LauncherService"

    const-string v27, "InputStream is null"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_c

    :cond_1b
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_1d
    :try_start_14
    new-instance v16, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v25, Lcom/android/launcher2/LauncherService$2;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Lcom/android/launcher2/LauncherService$2;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    const-wide/16 v28, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    :catchall_3
    move-exception v25

    move-object v10, v11

    goto :goto_d

    :catch_3
    move-exception v6

    move-object v10, v11

    goto/16 :goto_6

    :catchall_4
    move-exception v25

    move-object/from16 v17, v18

    goto/16 :goto_5

    :catch_4
    move-exception v6

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v17, v18

    goto/16 :goto_4
.end method

.method public static declared-synchronized XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 33

    const-class v28, Lcom/android/launcher2/LauncherService;

    monitor-enter v28

    :try_start_0
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator source: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1

    const-string v27, "LauncherService"

    const-string v29, "saveKey is Empty"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v28

    return-void

    :cond_1
    :try_start_1
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dir fileList.length: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    array-length v0, v14

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v14

    move/from16 v29, v0

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    aget-object v15, v14, v27

    new-instance v13, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_2

    const-string v30, "LauncherService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "file: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", delete failed"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :cond_4
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dir.exists():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/homescreen.exml"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v27

    if-nez v27, :cond_5

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    :try_start_3
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "saveFile.exists():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Lcom/android/launcher2/LauncherService$Result;

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherService$Result;-><init>(Lcom/android/launcher2/LauncherService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v19, 0x0

    const/16 v16, 0x0

    :try_start_4
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    sget-boolean v27, Lcom/android/launcher2/LauncherService;->bEncryption:Z

    if-eqz v27, :cond_9

    const-string v27, "SCLOUD"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v19

    move-object/from16 v16, v17

    :goto_3
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v25

    :try_start_7
    const-string v27, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v27, "UTF-8"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v21

    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v27

    sput-boolean v27, Lcom/android/launcher2/LauncherService;->mIsCurrentDBHomeOnlyMode:Z

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherService;->makeTag_BackupCategory(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v27

    if-eqz v27, :cond_a

    const-string v27, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherService;->makeTag_Worksapce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher2/LauncherService$Result;)V

    const-string v27, "hotseat"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_AppOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)Z

    const-string v27, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherService;->makeTag_Worksapce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher2/LauncherService$Result;)V

    const-string v27, "hotseat_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    :goto_4
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v29, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x0

    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v9, v0, [B

    :goto_6
    const/16 v27, 0x0

    const/16 v29, 0x400

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v8, v9, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v22

    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v11

    :goto_7
    :try_start_9
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator RuntimeException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->err_code:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v19, :cond_7

    :try_start_a
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_7
    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_8
    :goto_8
    const-string v27, "SCLOUD"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v27, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "RESULT"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/LauncherService$Result;->result:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v27, "ERR_CODE"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/LauncherService$Result;->err_code:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v27, "REQ_SIZE"

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v27, "SOURCE"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v27, "EXPORT_SESSION_TIME"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27

    :catch_1
    move-exception v12

    :try_start_b
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator IOException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :cond_9
    :try_start_c
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v19, v20

    goto/16 :goto_3

    :cond_a
    :try_start_d
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v27

    if-eqz v27, :cond_c

    const-string v27, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherService;->makeTag_Worksapce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher2/LauncherService$Result;)V

    const-string v27, "hotseat_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    :catch_2
    move-exception v11

    :try_start_e
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator RuntimeException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->err_code:I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    :catch_3
    move-exception v11

    :goto_9
    :try_start_f
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator File error occured Exception : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->err_code:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v19, :cond_b

    :try_start_10
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_b
    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_8

    :cond_c
    :try_start_11
    const-string v27, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherService;->makeTag_Worksapce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher2/LauncherService$Result;)V

    const-string v27, "hotseat"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v27, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherService;->makeTag_AppOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_4

    :catch_4
    move-exception v11

    :try_start_12
    const-string v27, "LauncherService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XmlGenerator Error occured while generate XM Exception : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/launcher2/LauncherService$Result;->err_code:I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v27

    :goto_a
    if-eqz v19, :cond_d

    :try_start_13
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_d
    if-eqz v16, :cond_e

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_e
    throw v27

    :cond_f
    if-eqz v19, :cond_10

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V

    :cond_10
    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherService;->close(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_8

    :catchall_2
    move-exception v27

    move-object/from16 v16, v17

    goto :goto_a

    :catch_5
    move-exception v11

    move-object/from16 v16, v17

    goto/16 :goto_9

    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    goto/16 :goto_7
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close inputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static close(Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close outputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    sget-object v5, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v5, 0x10

    new-array v2, v5, [B

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Lcom/android/launcher2/LauncherService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    sget-object v5, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljavax/crypto/CipherInputStream;

    sget-object v6, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v5, p0, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "LauncherService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decryptStream secretkey Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    sget-object v6, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v1, v6, [B

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v6, 0x10

    new-array v2, v6, [B

    if-ne p2, v9, :cond_0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Lcom/android/launcher2/LauncherService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    sget-object v6, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, v9, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    sget-object v7, Lcom/android/launcher2/LauncherService;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v6, p0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v6

    :catch_0
    move-exception v0

    const-string v6, "LauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptStream secretkey Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    const/16 v2, 0x3e8

    const/16 v6, 0x100

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v9, "PBKDF2WithHmacSHA1"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p2, v2, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v8

    :cond_0
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    const/16 v9, 0x10

    new-array v4, v9, [B

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    array-length v10, v4

    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method private static getProviderURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "home"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hotseat"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/launcher2/LauncherService;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hotseat_homeOnly"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    sget-boolean v1, Lcom/android/launcher2/LauncherService;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v47

    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v4, "container"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v4, "itemType"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v4, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v4, "cellX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v4, "cellY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    const-string v4, "intent"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v4, "appWidgetId"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v4, "iconType"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v4, "iconPackage"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v4, "iconResource"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v4, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    :cond_0
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    const-wide/16 v4, -0x64

    cmp-long v4, v16, v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v43, v43, -0x1

    :cond_1
    if-gez v43, :cond_3

    :cond_2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_3
    const/4 v15, 0x0

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v38, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    :cond_4
    const/16 v41, 0x0

    const/4 v14, 0x0

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    :cond_5
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    packed-switch v40, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz v15, :cond_2

    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "screen"

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    const-string v5, "packageName"

    move-object/from16 v0, p5

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    const-string v5, "className"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p5

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-wide/16 v4, -0x65

    cmp-long v4, v16, v4

    if-eqz v4, :cond_a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    const-string v5, "x"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    const-string v5, "y"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p5

    move-object/from16 v1, v44

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p5

    move-object/from16 v1, v45

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    const-string v4, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    const-string v5, "restored"

    const-string v8, "4"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    array-length v4, v0

    if-lez v4, :cond_d

    const/4 v4, 0x0

    const-string v5, "icon"

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :catch_0
    move-exception v19

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const-string v5, "shortcut"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "screen"

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_f

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    const-string v5, "iconPackage"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    const-string v5, "iconResource"

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p5

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    const-wide/16 v4, -0x65

    cmp-long v4, v16, v4

    if-eqz v4, :cond_12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    const-string v5, "x"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    const-string v5, "y"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p5

    move-object/from16 v1, v44

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p5

    move-object/from16 v1, v45

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    const-string v4, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    const-string v5, "restored"

    const-string v8, "4"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x0

    const-string v5, "uri"

    move-object/from16 v0, p5

    move-object/from16 v1, v39

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    if-eqz v18, :cond_17

    move-object/from16 v0, v18

    array-length v4, v0

    if-lez v4, :cond_17

    const/4 v4, 0x0

    const-string v5, "icon"

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17
    const-string v4, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_ContactShortcut(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_18
    const/4 v4, 0x0

    const-string v5, "shortcut"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v42

    if-eqz v42, :cond_2

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    const-string v5, "appwidget"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "screen"

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x0

    const-string v5, "packageName"

    move-object/from16 v0, p5

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    const-string v5, "className"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    const-string v5, "x"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    const-string v5, "y"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p5

    move-object/from16 v1, v44

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p5

    move-object/from16 v1, v45

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1e
    const/4 v4, 0x0

    const-string v5, "appWidgetID"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    const-string v5, "restored"

    const-string v8, "4"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1f
    const/4 v4, 0x0

    const-string v5, "appwidget"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :pswitch_4
    const/4 v4, 0x0

    const-string v5, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "screen"

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p5

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_20
    const-wide/16 v4, -0x65

    cmp-long v4, v16, v4

    if-eqz v4, :cond_22

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v4, 0x0

    const-string v5, "x"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_21
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x0

    const-string v5, "y"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_22
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p5

    move-object/from16 v1, v44

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_23
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p5

    move-object/from16 v1, v45

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_24
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherService;->makeTag_FolderItemById(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v4, 0x0

    const-string v5, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static makeTag_AppOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " folderId < 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherService;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "screen , cell , title"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v2, "LauncherService"

    const-string v3, "makeDefaultWorkSpace : Failed to get Cursor from contentResolver.query"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_0
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v2, "screen"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v2, "componentName"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v2, "hidden"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const/16 v28, 0x0

    :cond_3
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_3

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherService;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v30, "folder"

    :goto_2
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    const-string v3, "screen"

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string v2, "folder"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherService;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/4 v2, 0x0

    const-string v3, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "folderId , screen"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    :goto_3
    if-eqz v15, :cond_b

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherService;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    const/4 v2, 0x0

    const-string v3, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const/4 v2, 0x0

    const-string v3, "packageName"

    const/4 v4, 0x0

    aget-object v4, v19, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "className"

    const/4 v4, 0x1

    aget-object v4, v19, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const-string v3, "restored"

    const-string v4, "4"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v21

    :try_start_2
    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_AppOrder IllegalArgumentException Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v15, :cond_7

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_4
    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :try_start_4
    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_AppOrder IllegalArgumentException Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_6
    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    :try_start_5
    const-string v30, "favorite"

    goto/16 :goto_2

    :cond_b
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v16

    :try_start_6
    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_AppOrder Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catch_3
    move-exception v16

    :try_start_7
    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_AppOrder Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v15, :cond_7

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    :catchall_1
    move-exception v2

    if-eqz v15, :cond_d

    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    :cond_e
    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/4 v2, 0x0

    const-string v3, "packageName"

    const/4 v4, 0x0

    aget-object v4, v29, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "className"

    const/4 v4, 0x1

    aget-object v4, v29, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const-string v3, "restored"

    const-string v4, "4"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    :cond_f
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6
.end method

.method private static makeTag_BackupCategory(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x2c

    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "category"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "hotseat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "appOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "homeOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "hotseat_homeOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "zeroPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "category"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "homeOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "hotseat_homeOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "hotseat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "appOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static makeTag_ContactShortcut(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "LauncherService"

    const-string v5, "makeTag_ContactShortcut()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v12

    const-string v4, "LauncherService"

    const-string v5, "return Intent.parseUri() URISyntaxException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_0

    const-string v4, "com.android.contacts"

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LauncherService"

    const-string v5, "vcf file making..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :try_start_1
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v4, "directory"

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "default"

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v16

    new-instance v2, Lcom/android/vcard/VCardComposer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v2, v0, v1, v4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "LauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "LauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const-string v5, "vcf"

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "LauncherService"

    const-string v5, "vcf file make success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v4, "LauncherService"

    const-string v5, "not have composer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v12

    :goto_2
    :try_start_5
    const-string v4, "LauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeTag_ContactShortcut Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_4
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v12

    move-object v2, v9

    goto :goto_2
.end method

.method private static makeTag_FolderItemById(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherService;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "screen"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherService;->getProviderURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_10

    const-string v3, "itemType"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v3, "screen"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v3, "title"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v3, "iconType"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v3, "iconPackage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v3, "iconResource"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v3, "icon"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "\n"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v10, 0x0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    const/16 v25, 0x0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    :cond_1
    const/16 v28, 0x0

    const/4 v9, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    :cond_2
    packed-switch v27, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v10, :cond_0

    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    const-string v4, "screen"

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string v3, "SCLOUD"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    const-string v4, "restored"

    const-string v5, "4"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-eqz v12, :cond_6

    array-length v3, v12

    if-lez v3, :cond_6

    const/4 v3, 0x0

    const-string v4, "icon"

    const/4 v5, 0x2

    invoke-static {v12, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    :catch_0
    move-exception v13

    goto/16 :goto_0

    :pswitch_1
    :try_start_3
    const-string v3, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const-string v4, "shortcut"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    const-string v4, "screen"

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-nez v16, :cond_9

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    const-string v4, "iconPackage"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    const-string v4, "iconResource"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    const-string v3, "SCLOUD"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    const-string v4, "restored"

    const-string v5, "4"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    const-string v4, "uri"

    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-eqz v12, :cond_d

    array-length v3, v12

    if-lez v3, :cond_d

    const/4 v3, 0x0

    const-string v4, "icon"

    const/4 v5, 0x2

    invoke-static {v12, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    const-string v3, "SCLOUD"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherService;->makeTag_ContactShortcut(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_e
    const/4 v3, 0x0

    const-string v4, "shortcut"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10
    const-string v3, "\n"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container=-101 and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher2/LauncherService;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "container desc , screen , cellY , cellX"

    invoke-static {p1}, Lcom/android/launcher2/LauncherService;->getProviderURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "container desc , screen , cellY , cellX"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v1, "LauncherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_Hotseat(), fail to open cursor, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v0

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/launcher2/LauncherService;->makeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string v1, "LauncherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTag_Hotseat Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v8, "PageCount"

    const-string v10, "ScreenIndex"

    const-string v9, "Rows"

    const-string v7, "Columns"

    const-string v11, "zeroPage"

    const/4 v13, 0x2

    new-array v1, v13, [I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Landroid/content/Context;Z)Z

    move-result v12

    const-string v13, "homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "_homeOnly"

    invoke-virtual {v8, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "_homeOnly"

    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "_homeOnly"

    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "_homeOnly"

    invoke-virtual {v7, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "com.sec.android.app.launcher.prefs"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "screencount.homeonly"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v13}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    :goto_0
    if-gtz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    aget v2, v1, v13

    const/4 v13, 0x1

    aget v3, v1, v13

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    const-string v13, "LauncherService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pageCount: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "com.sec.android.app.launcher.prefs"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "homescreenindex"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v6, v6, -0x1

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    const-string v13, "com.sec.android.app.launcher.prefs"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "screencount"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v13}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v13, "LauncherService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "makeTag_PageSetting Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static makeTag_Worksapce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher2/LauncherService$Result;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container=-100 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/launcher2/LauncherService;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "container desc , screen , cellY , cellX"

    invoke-static {p1}, Lcom/android/launcher2/LauncherService;->getProviderURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "container desc , screen , cellY , cellX"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher2/LauncherService$Result;->err_code:I

    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeTag_Worksapce(), fail to open cursor, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, v1

    move-object/from16 v10, p3

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/LauncherService;->makeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher2/LauncherService$Result;->result:I

    const/4 v2, 0x3

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher2/LauncherService$Result;->err_code:I

    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeTag_Worksapce(), fail to cursor.moveToFirst(), "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_2
    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeTag_Worksapce Exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private static nullCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private xmlBackupHomescreen(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "SAVE_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "SESSION_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SECURITY_LEVEL"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherService;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private xmlRestoreHomescreen(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "SAVE_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "SESSION_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SECURITY_LEVEL"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "DEBUG_LEVEL"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherService;->RestoreHomescreenLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_1

    const-string v1, "LauncherService"

    const-string v2, "LauncherService Intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherService;->xmlBackupHomescreen(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherService;->xmlRestoreHomescreen(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.android.intent.action.REQUEST_MAKE_DISABLE_APP_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->makeDisableAppList()V

    goto :goto_0
.end method
