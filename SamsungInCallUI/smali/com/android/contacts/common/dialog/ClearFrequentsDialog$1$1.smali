.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

.field final synthetic b:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->b:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->a:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->b:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iget-object v0, v0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->DELETE_USAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->a:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-virtual {v0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->dismiss()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->a(Ljava/lang/Void;)V

    return-void
.end method
