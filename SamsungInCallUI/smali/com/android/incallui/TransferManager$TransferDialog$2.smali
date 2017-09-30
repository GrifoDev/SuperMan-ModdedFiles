.class Lcom/android/incallui/TransferManager$TransferDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/TransferManager$TransferDialog;-><init>(Lcom/android/incallui/TransferManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/TransferManager$TransferDialog;

.field final synthetic val$this$0:Lcom/android/incallui/TransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/TransferManager$TransferDialog$2;->val$this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "TransferManager"

    const-string v1, "onClick searchButton"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/TransferManager$TransferDialog$2;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v0}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/android/incallui/TransferManager;->access$500()Landroid/content/Intent;

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
