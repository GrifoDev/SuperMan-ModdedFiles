.class Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;
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

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept Invite mini InCall "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-static {v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$100(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->access$102(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    return-void
.end method
