.class Lcom/android/incallui/secrcs/RcsShareUI$6;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;

.field final synthetic val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/secrcs/RcsInvitation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$num:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1797
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick reject share "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    .line 1799
    const/4 v2, 0x0

    .line 1800
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1801
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v4, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1802
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1803
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 1810
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1811
    const-string v3, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    .line 1812
    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->id:J

    .line 1811
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1815
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    :cond_1
    :goto_1
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Intent found null...."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return-void

    .line 1805
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v4, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1806
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$6;->val$invitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Did not find RCS service..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
