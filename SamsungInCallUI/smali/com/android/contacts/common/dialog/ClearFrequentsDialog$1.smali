.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->c:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->c:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    invoke-virtual {v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->c:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    const v2, 0x7f09051f

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->a(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
