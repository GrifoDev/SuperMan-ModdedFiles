.class public Lcom/android/contacts/common/vcard/CancelActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "VCardCancel"

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "job_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->c:I

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->d:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->e:I

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/CancelActivity;->showDialog(I)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const v4, 0x104000a

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v0, 0x7f100009

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->e:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f090514

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$1;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const v0, 0x7f090513

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f10000a

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090515

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090598

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->b:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "VCardCancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->a()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/contacts/common/vcard/CancelRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->c:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->a(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
