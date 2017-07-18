.class Lcom/android/incallui/secrcs/RcsShareUI$7;
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

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting Request,Dismiss Dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->dismissIncomingDialog()V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$7;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method
