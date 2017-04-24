.class Lcom/android/incallui/secrcs/RcsShareUI$4;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Reject Invite on Incall "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v4, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Intent found null...."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v4, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Did not find RCS service..."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
