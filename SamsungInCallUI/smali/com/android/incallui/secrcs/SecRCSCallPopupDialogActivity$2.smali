.class Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->showRCSDialog(ILjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

.field final synthetic val$sessionId:Ljava/lang/Long;

.field final synthetic val$sessionType:I


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;ILjava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    iput p2, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    iput-object p3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reject Invite mini InCall "

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-static {v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$100(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-static {v1, v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$102(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    if-ne v1, v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v2, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Did not find RCS service..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
