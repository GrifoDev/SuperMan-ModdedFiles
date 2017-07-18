.class public Lcom/android/launcher2/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# static fields
.field public static final BNR_PERMISSION:Ljava/lang/String; = "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

.field public static final CHANGED_COMPONENT_LIST_XML:Ljava/lang/String; = "/change_native_packages.xml"

.field private static final CSC_FILE_MAINMENU:Ljava/lang/String; = "default_application_order"

.field private static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "default_workspace"

.field private static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field public static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

.field public static final REQUEST_RESTORE_CONTACT_SHORTCUT:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

.field public static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

.field public static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

.field public static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

.field private static final SAMSUNG_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

.field public static final SCLOUD_SAVEKEY:Ljava/lang/String; = "SCLOUD"

.field public static final SCLOUD_SOURCE:Ljava/lang/String; = "SCLOUD"

.field private static final SD_DIRECTORY:Ljava/lang/String; = "LCExtractor"

.field private static final TAG:Ljava/lang/String; = "Launcher.XmlBackup"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_WIDGET:Ljava/lang/String; = "widget"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized LauncherExtractor(Landroid/content/Context;)V
    .locals 6

    const-class v3, Lcom/android/launcher2/XmlBackup;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher2/utils/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/android/launcher2/utils/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1

    const-string v2, "Launcher.XmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherExtractor() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/XmlBackup;->makeDefaultXml(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static backupRestoreService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v3, "Launcher.XmlBackup"

    const-string v4, "backupRestoreService context,Intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "ACTION"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Launcher.XmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive REQUEST_BACKUP_HOMESCREEN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher2/LauncherService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const-string v3, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Launcher.XmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive REQUEST_RESTORE_HOMESCREEN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher2/LauncherService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    const-string v3, "Launcher.XmlBackup"

    const-string v4, "onReceive Action value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private closeIn(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private closeOut(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "&(?!amp;)"

    const-string v2, "&amp;"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static createDirInSD(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/XmlBackup;->isSdMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Launcher.XmlBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private deleteDir(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "Launcher.XmlBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir fileList.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Launcher.XmlBackup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getHsFolderItemById(Landroid/content/Context;J)Ljava/lang/String;
    .locals 19

    const/16 v17, 0x0

    new-instance v8, Lcom/android/launcher2/GenXml;

    invoke-direct {v8}, Lcom/android/launcher2/GenXml;-><init>()V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent , screen , cellX , cellY"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "screen"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "intent"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    :try_start_2
    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-virtual {v8, v2, v3, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, "favorite"

    const-string v3, ""

    const/4 v6, 0x3

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v3, v6, v9}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v2, "screen"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v9, "launcher:screen"

    const-string v2, "screen"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    const-string v9, "launcher:packageName"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v9, "launcher:className"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/>"

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/android/launcher2/GenXml;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v15

    :cond_2
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v15

    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private static getMenuFolderItemById(Landroid/content/Context;J)Ljava/lang/String;
    .locals 19

    new-instance v8, Lcom/android/launcher2/GenXml;

    invoke-direct {v8}, Lcom/android/launcher2/GenXml;-><init>()V

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "folderId"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "screen"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "componentName"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "folderId , screen"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "componentName"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-virtual {v8, v2, v3, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, "favorite"

    const-string v3, ""

    const/4 v6, 0x3

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v3, v6, v9}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v2, "screen"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v9, "launcher:screen"

    const-string v2, "screen"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    const-string v9, "launcher:packageName"

    const/4 v2, 0x0

    aget-object v10, v18, v2

    const-string v11, ""

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v9, "launcher:className"

    const/4 v2, 0x1

    aget-object v10, v18, v2

    const-string v11, "/>"

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/android/launcher2/GenXml;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v15

    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/BaseItem;)V
    .locals 15

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/BackupRestore/restore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v10, "Launcher.XmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dir fileList.length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v11, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v6, v10

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x5

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v12, "@"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    array-length v12, v9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "Launcher.XmlBackup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "find title and icon info packageName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Lcom/android/launcher2/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private static isSdMounted()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/BackupRestore/restore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v8, "Launcher.XmlBackup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dir fileList.length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v9, v3

    move v8, v6

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v4, v3, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x5

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v10, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    aget-object v10, v5, v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static makeDefaultAppOrder(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .locals 30

    new-instance v10, Lcom/android/launcher2/GenXml;

    invoke-direct {v10}, Lcom/android/launcher2/GenXml;-><init>()V

    const-string v7, " folderId < 0 "

    const-string v9, "screen , cell , title"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_0
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v4, "Launcher.XmlBackup"

    const-string v5, "makeDefaultAppOrder : Failed to get Cursor from contentResolver.query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4

    :cond_3
    const-string v4, "?xml version=\"1.0\" encoding=\"utf-8\"?"

    const-string v5, ">"

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v10, v4, v5, v6, v8}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10}, Lcom/android/launcher2/GenXml;->addApacheLicense()V

    const-string v4, "appOrder xmlns:launcher=\"http://schemas.android.com/apk/res/com.sec.android.app.launcher\""

    const-string v5, ">"

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v10, v4, v5, v6, v8}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    :try_start_0
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v4, "screen"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v4, "componentName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const/16 v25, -0x1

    const/16 v28, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v0, v25

    if-eq v0, v4, :cond_4

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v10, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    :cond_4
    if-eqz v29, :cond_6

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v10, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, "folder"

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v4, v5, v6, v8}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const-string v11, "launcher:screen"

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_5
    const-string v11, "launcher:title"

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ">"

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/launcher2/XmlBackup;->getMenuFolderItemById(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/launcher2/GenXml;->addStrBufData(Ljava/lang/String;)V

    const-string v4, "folder"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v10, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    :cond_6
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v10, v4}, Lcom/android/launcher2/GenXml;->addStrBufData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v19

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    :try_start_2
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v10, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, "favorite"

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v4, v5, v6, v8}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    const-string v11, "launcher:screen"

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9
    const-string v11, "launcher:packageName"

    const/4 v4, 0x0

    aget-object v12, v29, v4

    const-string v13, ""

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v11, "launcher:className"

    const/4 v4, 0x1

    aget-object v12, v29, v4

    const-string v13, "/>"

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v17

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_a
    :try_start_4
    const-string v4, "appOrder"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v4, "<b>[ Extraction Result Report ]</b><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/android/launcher2/GenXml;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/launcher2/XmlBackup;->write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "LCExtractor"

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->createDirInSD(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v27

    if-nez v27, :cond_b

    const/4 v4, 0x0

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_b
    :try_start_5
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/XmlBackup;->write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "Extraction for <b><font color=\'green\'>Mainmenu</font></b> is <b><font color=\'green\'>done successfully</font></b>. <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : The customization that you do in target is extracted to <u>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "</u>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " from Launcher database.<br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "You can get the xml file from below path <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=> /"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "LCExtractor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    const-string v4, "<br><br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_d
    :try_start_6
    const-string v4, "Extraction is done but <font color=\'red\'> copy to SD card is failed</font> <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : The customization that you do in target is extracted to "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " from Launcher database.<br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Check the SD card mount state or permission <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "You can get the temporary xml file from below path via DDMS Tool <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=> "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    :cond_f
    :try_start_7
    const-string v4, " => Extraction <font color=\'red\'> is failed</font> <br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5
.end method

.method private static makeDefaultWorkspace(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .locals 45

    new-instance v22, Lcom/android/launcher2/GenXml;

    invoke-direct/range {v22 .. v22}, Lcom/android/launcher2/GenXml;-><init>()V

    const/16 v37, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    const-string v42, "container = \'-100\'or container = \'-101\'"

    const-string v43, "container desc , screen , cellY , cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "container = \'-100\'or container = \'-101\'"

    const/4 v8, 0x0

    const-string v9, "container desc , screen , cellY , cellX"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v4, "Launcher.XmlBackup"

    const-string v5, "makeDefaultWorkSpace : Failed to get Cursor from contentResolver.query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4

    :cond_3
    const-string v4, "?xml version=\"1.0\" encoding=\"utf-8\" ?"

    const-string v5, ">"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/GenXml;->addApacheLicense()V

    const-string v4, "favorites xmlns:launcher=\"http://schemas.android.com/apk/res/com.sec.android.app.launcher\""

    const-string v5, ">"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "home"

    const-string v5, ">"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v12, 0x1

    :try_start_0
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v4, "itemType"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v4, "screen"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v4, "cellX"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v4, "cellY"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v4, "spanX"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v4, "spanY"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v4, "appWidgetId"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v4, "container"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v4, "intent"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v4, "title"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const/16 v36, -0x1

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move/from16 v0, v31

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move/from16 v0, v30

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x65

    cmp-long v4, v16, v4

    if-eqz v4, :cond_4

    add-int/lit8 v41, v41, -0x1

    :cond_4
    const-wide/16 v4, -0x65

    cmp-long v4, v16, v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    if-ne v12, v4, :cond_5

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v4, "home"

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v4, "Hotseat (We use the screen as the position of the item in the hotseat)"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, "hotseat"

    const-string v5, ">"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_5
    move/from16 v0, v36

    move/from16 v1, v41

    if-eq v0, v1, :cond_6

    if-nez v13, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " screen ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    move/from16 v36, v41

    :cond_6
    packed-switch v38, :pswitch_data_0

    :cond_7
    :goto_2
    :pswitch_0
    const-string v4, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/GenXml;->addStrBufData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v23

    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    const-string v19, "favorite"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v44

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v37

    :try_start_4
    const-string v20, ""

    if-eqz v13, :cond_9

    const-string v20, "/>"

    :cond_9
    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:packageName"

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:className"

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "launcher:themeName"

    const-string v4, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_a
    if-nez v13, :cond_b

    const-string v5, "launcher:screen"

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    move-object/from16 v7, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:x"

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:y"

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/>"

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v18

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catch_2
    move-exception v18

    goto/16 :goto_2

    :cond_b
    :try_start_6
    const-string v5, "launcher:screen"

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    move-object/from16 v7, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    :pswitch_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, "folder"

    const-string v5, ""

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:screen"

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:title"

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:x"

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:y"

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ">"

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/launcher2/XmlBackup;->getHsFolderItemById(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/GenXml;->addStrBufData(Ljava/lang/String;)V

    const-string v4, "folder"

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    goto/16 :goto_2

    :pswitch_3
    const-string v19, "appwidget"

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    const/4 v15, 0x0

    if-eqz v10, :cond_d

    iget-object v15, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :cond_d
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/launcher2/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:packageName"

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:className"

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:screen"

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:x"

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:y"

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:spanX"

    move/from16 v0, v32

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "launcher:spanY"

    move/from16 v0, v33

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/>"

    const/4 v8, 0x3

    const/4 v9, 0x2

    move-object/from16 v4, v22

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x1

    if-ne v13, v4, :cond_f

    const-string v4, "hotseat"

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    :goto_4
    const-string v4, "favorites"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v4, "<b>[ Extraction Result Report ]</b><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/GenXml;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/launcher2/XmlBackup;->write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "LCExtractor"

    invoke-static {v4}, Lcom/android/launcher2/XmlBackup;->createDirInSD(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v40

    if-nez v40, :cond_10

    const/4 v4, 0x0

    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_f
    :try_start_8
    const-string v4, "home"

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/GenXml;->endElement(Ljava/lang/String;II)V

    goto :goto_4

    :cond_10
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/XmlBackup;->write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "Extraction for <b><font color=\'green\'>Homescreen</font></b> is <b><font color=\'green\'> done successfully </font></b>. <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : The customization that you do in target is extracted to <u>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "</u>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " from Launcher database.<br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "You can get the xml file from below path <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=> /"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "LCExtractor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const-string v4, "<br><br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_12
    :try_start_9
    const-string v4, "Extraction is done but <font color=\'red\'> copy to SD card is failed</font> <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : The customization that you do in target is extracted to "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " from Launcher database.<br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Check the SD card mount state or permission <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "You can get the temporary xml file from below path via DDMS Tool <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=> "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_13
    const-string v4, " => Extraction <font color=\'red\'> is failed</font> <br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized makeDefaultXml(Landroid/content/Context;)V
    .locals 8

    const-class v6, Lcom/android/launcher2/XmlBackup;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v7, ".homescreen"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Launcher.XmlBackup"

    const-string v7, "LauncherExtractor() failed, not have .homescreen"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "default_workspace"

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "_homeonly"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "_knox"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "default_application_order"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "_knox"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v5, ".xml"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v5, " is creating..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/android/launcher2/XmlBackup;->makeDefaultWorkspace(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Launcher.XmlBackup"

    const-string v7, "makeDefaultWorkspace() is failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/android/launcher2/XmlBackup;->makeDefaultAppOrder(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Launcher.XmlBackup"

    const-string v7, "makeDefaultAppOrder() is failed."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static nullCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static parseComponentName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string v12, "Launcher.XmlBackup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unzip start zipFile = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/zip/ZipInputStream;

    invoke-direct {v11, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v6, v5

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v12, "Launcher.XmlBackup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unzipping "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v5, v6

    move-object v10, v11

    :goto_1
    const-string v12, "Launcher.XmlBackup"

    const-string v13, "unzip"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v5}, Lcom/android/launcher2/XmlBackup;->closeOut(Ljava/io/OutputStream;)V

    invoke-direct {p0, v10}, Lcom/android/launcher2/XmlBackup;->closeIn(Ljava/io/InputStream;)V

    :goto_2
    return-void

    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v12, 0x400

    :try_start_4
    new-array v1, v12, [B

    :goto_3
    invoke-virtual {v11, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    :try_start_5
    const-string v12, "Launcher.XmlBackup"

    const-string v13, "unzip end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v6

    move-object v10, v11

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x400

    new-array v0, v10, [B

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/launcher2/XmlBackup;->isSdMounted()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Launcher.XmlBackup"

    const-string v11, "SDcard isn\'t mounted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v9

    :cond_0
    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "write to sdcard from"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ===> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-le v7, v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    :goto_2
    :try_start_3
    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fnfe : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "<br>"

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_3
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_7
    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v5, v6

    move-object v2, v3

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_3
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_5
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_6
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_7
    move-exception v1

    :goto_8
    const/4 v8, 0x0

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_5

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :goto_9
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_5
    :goto_a
    if-eqz v2, :cond_2

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_9
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_a
    move-exception v1

    const-string v9, "Launcher.XmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_0
    move-exception v9

    :goto_b
    if-eqz v5, :cond_6

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :goto_c
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :cond_6
    :goto_d
    if-eqz v2, :cond_7

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :cond_7
    :goto_e
    throw v9

    :catch_b
    move-exception v1

    const-string v10, "Launcher.XmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_c
    move-exception v1

    const-string v10, "Launcher.XmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_d
    move-exception v1

    const-string v10, "Launcher.XmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_b

    :catchall_2
    move-exception v9

    move-object v5, v6

    move-object v2, v3

    goto :goto_b

    :catch_e
    move-exception v1

    move-object v2, v3

    goto/16 :goto_8

    :catch_f
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_8

    :catch_10
    move-exception v4

    goto/16 :goto_2

    :catch_11
    move-exception v4

    move-object v2, v3

    goto/16 :goto_2

    :cond_8
    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_5
.end method

.method private static write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 11

    const/4 v5, 0x0

    const-string v0, "Launcher.XmlBackup"

    const-string v2, "sCloud backup"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/BackupRestore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/restore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher2/XmlBackup;->deleteDir(Ljava/lang/String;)V

    const-string v0, "Launcher.XmlBackup"

    const-string v2, "backup file creating start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SCLOUD"

    const-string v3, "SCLOUD"

    const-string v4, "0"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherService;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "Launcher.XmlBackup"

    const-string v2, "backup file write"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Lcom/android/launcher2/XmlBackup$1;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher2/XmlBackup$1;-><init>(Lcom/android/launcher2/XmlBackup;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v0, v2, v3, v9, v4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-direct {p0, v9}, Lcom/android/launcher2/XmlBackup;->closeOut(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/XmlBackup;->deleteDir(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :goto_1
    const-string v0, "Launcher.XmlBackup"

    const-string v2, "err"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p3, v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/XmlBackup;->closeOut(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/XmlBackup;->deleteDir(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v8, v9

    goto :goto_1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v10, "Launcher.XmlBackup"

    const-string v11, "onReceive context,Intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const-string v10, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lcom/android/launcher2/utils/PermissionUtils;->getPermissions(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/android/launcher2/utils/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p1, p2}, Lcom/android/launcher2/XmlBackup;->backupRestoreService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v10, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const-string v10, "ACTION"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const-string v10, "SOURCE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "RESULT"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "ERR_CODE"

    const/4 v11, 0x4

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "REQ_SIZE"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "SOURCE"

    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "EXPORT_SESSION_TIME"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v10, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "RESULT"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "ERR_CODE"

    const/4 v11, 0x4

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "REQ_SIZE"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "SOURCE"

    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 11

    const-string v0, "Launcher.XmlBackup"

    const-string v2, "sCloud restore"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/BackupRestore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/homescreen.exml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/restore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/XmlBackup;->deleteDir(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string v0, "Launcher.XmlBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file.getStatSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.XmlBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target.getAbsolutePath(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "Launcher.XmlBackup"

    const-string v2, "file write"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/launcher2/XmlBackup$2;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher2/XmlBackup$2;-><init>(Lcom/android/launcher2/XmlBackup;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v8, v2, v3, v0, v4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    const-string v0, "Launcher.XmlBackup"

    const-string v2, "restoring"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v8}, Lcom/android/launcher2/XmlBackup;->closeIn(Ljava/io/InputStream;)V

    invoke-direct {p0, v10, v1}, Lcom/android/launcher2/XmlBackup;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SCLOUD"

    const-string v3, "SCLOUD"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherService;->RestoreHomescreenLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/XmlBackup;->closeIn(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.XmlBackup"

    const-string v2, "failed, file is null..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0
.end method
