.class Lcom/android/incallui/TransferManager$1;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/TransferManager;->showTransferDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/TransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/TransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager$1;->this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager$1;->this$0:Lcom/android/incallui/TransferManager;

    invoke-virtual {v0}, Lcom/android/incallui/TransferManager;->finish()V

    return-void
.end method
