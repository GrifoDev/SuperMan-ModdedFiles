.class public Landroid/app/RecoverableSecurityException$LocalDialog;
.super Landroid/app/DialogFragment;
.source "RecoverableSecurityException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RecoverableSecurityException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$-android_app_RecoverableSecurityException$LocalDialog_8805(Landroid/app/RecoverableSecurityException;Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/app/RecoverableSecurityException;->-get0(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException$LocalDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "RecoverableSecurityException"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/RecoverableSecurityException;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException$LocalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/app/RecoverableSecurityException;->-get1(Landroid/app/RecoverableSecurityException;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/app/RecoverableSecurityException;->-get0(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/app/-$Lambda$CTFS8-1U0ymoTt8ccmb1hIh486s;

    invoke-direct {v3, v0}, Landroid/app/-$Lambda$CTFS8-1U0ymoTt8ccmb1hIh486s;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
