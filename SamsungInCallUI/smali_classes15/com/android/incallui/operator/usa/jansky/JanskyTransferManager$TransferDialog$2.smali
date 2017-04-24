.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;
.super Ljava/lang/Object;
.source "JanskyTransferManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

.field final synthetic val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;->val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumberRadio:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mRadioButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$800(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
