.class Lcom/android/contacts/common/dialog/CallSubjectDialog$6;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

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
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$300(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    .line 202
    return-void
.end method
