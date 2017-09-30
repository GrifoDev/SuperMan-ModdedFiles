.class Lcom/android/contacts/common/dialog/CallSubjectDialog$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->f(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    return-void
.end method
