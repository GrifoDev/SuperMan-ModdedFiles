.class Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$200(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$300(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    :cond_0
    return-void
.end method
