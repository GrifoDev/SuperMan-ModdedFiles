.class public Lcom/android/launcher2/PutToSleepAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "PutToSleepAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PUT_TO_SLEEP_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "PutToSleepConfirmDialog"

.field private static mItem:Lcom/android/launcher2/BaseItem; = null

.field private static final sFragmentTag:Ljava/lang/String; = "PutToSleepConfirm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->PUT_TO_SLEEP_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/android/launcher2/BaseItem;)V
    .locals 3

    sput-object p1, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    new-instance v0, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;

    invoke-direct {v0}, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PutToSleepConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    const-string v2, "PutToSleepConfirmDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request Put to sleep... : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extras"

    aput-object v3, v4, v2

    const-string v18, "package_name = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v13, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->PUT_TO_SLEEP_URI:Landroid/net/Uri;

    const-string v5, "package_name = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "extras"

    const-string v3, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->PUT_TO_SLEEP_URI:Landroid/net/Uri;

    const-string v5, "package_name = ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroid/content/Intent;

    const-string v2, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "POLICY_NAME"

    const-string v3, "applocker"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PACKAGE_NAME"

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    sget-object v2, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_1

    const-string v8, "HSQO"

    :goto_1
    const-string v9, "Sleep Now"

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v14

    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_2
    const-string v8, "APQO"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080087

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08002e

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    return-object v1
.end method
