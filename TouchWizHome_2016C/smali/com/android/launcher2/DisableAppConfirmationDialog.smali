.class public Lcom/android/launcher2/DisableAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DisableAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableAppConfirmationDialog"

.field private static isUninstall:Z = false

.field private static mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener; = null

.field private static final sFragmentTag:Ljava/lang/String; = "DisableAppConfirm"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

.field private mDisablePosition:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mUserID:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-direct {v0}, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/app/FragmentManager;ZLcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V
    .locals 7

    const/16 v6, 0x90

    invoke-static {p6}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/android/launcher2/DisableAppConfirmationDialog;

    invoke-direct {v3}, Lcom/android/launcher2/DisableAppConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "label"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pos"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p4, p0, v6, v6}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v4, "icon"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "DisableAppConfirm"

    invoke-virtual {v3, p6, v4}, Lcom/android/launcher2/DisableAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sput-boolean p7, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    sput-object p8, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "DisableAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "DisableAppConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    const v4, 0x7f110033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/launcher2/Launcher;->saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V

    :cond_0
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "This App can not be disabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mUserID:I

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_4

    const-string v3, "android.content.pm.IPackageManager$Stub"

    invoke-static {v3}, Lcom/android/launcher2/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v12, v3, v4, v5}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Lcom/android/launcher2/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    if-eqz v16, :cond_1

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    move-object/from16 v0, v16

    invoke-static {v0, v10, v3}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    if-eqz v15, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v3, v2, v4}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v18, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v18, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v18, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v18, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v18, v3

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setApplicationEnabledSetting"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v5}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v17

    if-eqz v17, :cond_1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mUserID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v3, v4

    move-object/from16 v0, v17

    invoke-static {v11, v0, v3}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDisablePosition:I

    invoke-interface {v3, v4}, Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;->onPackageDeleteCompleted(I)V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "HSDS"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v3, "DisableAppConfirmationDialog"

    const-string v4, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Not installed with permissions needed for uninstalling"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/launcher2/DisableAppConfirmationDialog;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDisablePosition:I

    invoke-interface {v3, v4}, Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;->onPackageDeleteCompleted(I)V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "HSDS"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string v3, "DisableAppConfirmationDialog"

    const-string v4, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Unable to install, please try again !"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    const-string v3, "DisableAppConfirmationDialog"

    const-string v4, "Couldn\'t get package manager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_7
    const/4 v3, -0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->readdRemoveReadyItem()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDisablePosition:I

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mUserID:I

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f040010

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f090103

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0900e4

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f090040

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v9

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    const/4 v7, 0x0

    const v9, 0x7f110016

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v9, 0x2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, 0x3e4ccccd    # 0.2f

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v2

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f09003f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isATTModel()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f09003e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f09003d

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->readdRemoveReadyItem()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
