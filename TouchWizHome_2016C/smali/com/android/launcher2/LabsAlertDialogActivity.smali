.class public Lcom/android/launcher2/LabsAlertDialogActivity;
.super Landroid/app/Activity;
.source "LabsAlertDialogActivity.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static gInstance:Lcom/android/launcher2/LabsAlertDialogActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Launcher.galaxyLapsPopup"

    sput-object v0, Lcom/android/launcher2/LabsAlertDialogActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LabsAlertDialogActivity;->gInstance:Lcom/android/launcher2/LabsAlertDialogActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createDialog(Z)V
    .locals 4

    sget-object v1, Lcom/android/launcher2/LabsAlertDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "createDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LabsAlertDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LabsAlertDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LabsAlertDialogActivity$1;-><init>(Lcom/android/launcher2/LabsAlertDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LabsAlertDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lcom/android/launcher2/LabsAlertDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LabsAlertDialogActivity$2;-><init>(Lcom/android/launcher2/LabsAlertDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/android/launcher2/LabsAlertDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LabsAlertDialogActivity$3;-><init>(Lcom/android/launcher2/LabsAlertDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LabsAlertDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static instance()Lcom/android/launcher2/LabsAlertDialogActivity;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LabsAlertDialogActivity;->gInstance:Lcom/android/launcher2/LabsAlertDialogActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/launcher2/LabsAlertDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/launcher2/LabsAlertDialogActivity;->gInstance:Lcom/android/launcher2/LabsAlertDialogActivity;

    invoke-virtual {p0}, Lcom/android/launcher2/LabsAlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/LabsAlertDialogActivity;->createDialog(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LabsAlertDialogActivity;->gInstance:Lcom/android/launcher2/LabsAlertDialogActivity;

    sget-object v0, Lcom/android/launcher2/LabsAlertDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
