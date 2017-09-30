.class Lcom/android/contacts/common/dialog/CallSubjectDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->d(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/CallUtil;->a(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const-string v4, "telecom"

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-static {v3, v0, v2}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->a(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->f(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->f(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-virtual {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->finish()V

    return-void
.end method
