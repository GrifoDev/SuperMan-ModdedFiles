.class Lcom/android/incallui/secrcs/RcsShareUI$2;
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

.field final synthetic val$mnewcall:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$mnewcall:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept Invite on Incall "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$mnewcall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z
    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1800(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/secrcs/RcsShareUI$SessionState;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->type:I

    sget-object v1, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder 2 "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$mnewcall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingInvitationDialog()V

    return-void
.end method
