.class Lcom/android/contacts/common/dialog/CallSubjectDialog$3;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

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
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V
    invoke-static {v1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$300(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
