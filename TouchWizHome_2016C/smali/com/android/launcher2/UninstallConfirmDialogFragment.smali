.class public Lcom/android/launcher2/UninstallConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy_service"

.field private static final TAG:Ljava/lang/String; = "UninstallConfirmDialogFragment"

.field private static mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener; = null

.field private static final sFragmentTag:Ljava/lang/String; = "UninstallConfirm"


# instance fields
.field private mDeletePosition:I

.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;ZLcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;ZLcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v4, "UninstallConfirmDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UninstallConfirmDialogFragment return!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->setUninstallIntentSent(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "UninstallConfirm"

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
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mListener:Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;

    iget v3, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mDeletePosition:I

    invoke-interface {v2, v3}, Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;->onPackageDeleteCompleted(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for uninstalling"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to install, please try again !"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mDeletePosition:I

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mReset:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const v7, 0x7f0800dd

    const/4 v8, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getRemovablePreloadEnabled()I

    move-result v4

    if-ne v4, v6, :cond_1

    sget-object v4, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800aa

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mReset:Z

    if-eqz v4, :cond_2

    const v2, 0x7f08003f

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0800de

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800db

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v2, 0x7f0800dc

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
