.class Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;
.super Ljava/lang/Object;
.source "SecRCSCallPopupDialogActivity.java"

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
    .param p1, "this$0"    # Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    iput p2, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    iput-object p3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 189
    # getter for: Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Reject Invite mini InCall "

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    # getter for: Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$100(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    const/4 v4, 0x0

    # setter for: Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$102(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 194
    .local v1, "eintent":Landroid/content/Intent;
    iget v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    if-ne v3, v5, :cond_3

    .line 195
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-static {v3, v2}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 203
    :cond_1
    if-eqz v1, :cond_2

    .line 204
    const-string v3, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionId:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v3, v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v3}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    .line 214
    return-void

    .line 197
    :cond_3
    iget v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;->val$sessionType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 198
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v3, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Did not find RCS service..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
