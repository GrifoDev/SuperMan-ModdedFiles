.class Lcom/android/incallui/InVideoCallMenu$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->clickedCallTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$5;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$5;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$5;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
