.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$1;
.super Ljava/lang/Object;
.source "JanskyTransferManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->showTransferDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$1;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$1;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->finish()V

    .line 111
    return-void
.end method