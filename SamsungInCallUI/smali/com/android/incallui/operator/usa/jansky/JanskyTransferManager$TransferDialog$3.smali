.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;->val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "JanskyTransferManager"

    const-string v1, "onClick searchButton"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1000()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
