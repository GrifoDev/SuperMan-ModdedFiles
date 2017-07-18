.class Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SecRCSCallPopupDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f090228

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;->this$0:Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    goto :goto_0
.end method
