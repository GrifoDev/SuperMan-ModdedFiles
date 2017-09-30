.class Lcom/android/incallui/service/SecCallPopupService$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/service/SecCallPopupService;->access$000(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0, p2}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incalllui.secservice.action.ACTION_RCS_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sessionId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sessionType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :cond_5
    const-string v1, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$1;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    goto :goto_0
.end method
