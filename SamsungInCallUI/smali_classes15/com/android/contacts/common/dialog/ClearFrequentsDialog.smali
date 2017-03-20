.class public Lcom/android/contacts/common/dialog/ClearFrequentsDialog;
.super Landroid/app/DialogFragment;
.source "ClearFrequentsDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 41
    new-instance v0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    invoke-direct {v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;-><init>()V

    .line 42
    .local v0, "dialog":Lcom/android/contacts/common/dialog/ClearFrequentsDialog;
    const-string v1, "clearFrequents"

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 49
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 74
    .local v1, "okListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090460

    .line 75
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09045f

    .line 76
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    .line 78
    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 79
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
