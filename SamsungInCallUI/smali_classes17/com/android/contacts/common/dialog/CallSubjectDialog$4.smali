.class Lcom/android/contacts/common/dialog/CallSubjectDialog$4;
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

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$400(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;
    invoke-static {v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$500(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/contacts/common/CallUtil;->getCallWithSubjectIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const-string v4, "telecom"

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-static {v3, v2, v0}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->placeCall(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    # getter for: Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/android/contacts/common/dialog/CallSubjectDialog;->saveSubjectHistory(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$700(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-virtual {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->finish()V

    return-void
.end method
