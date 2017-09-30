.class Lcom/android/contacts/common/dialog/CallSubjectDialog$3;
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

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
