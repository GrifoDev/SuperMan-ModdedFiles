.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearFrequentsDialog.java"


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
.field final synthetic this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

.field final synthetic val$progressDialog:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->val$progressDialog:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iget-object v0, v0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->DELETE_USAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->val$progressDialog:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-virtual {v0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->dismiss()V

    .line 69
    return-void
.end method
