.class Lcom/android/incallui/TransferManager$TransferDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/TransferManager$TransferDialog$4;->val$this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-virtual {v0}, Lcom/android/incallui/TransferManager;->finish()V

    return-void
.end method
