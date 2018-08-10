.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;
.super Landroid/content/BroadcastReceiver;
.source "TaskBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v3, "closeSystemDialogFromTaskBar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const-string/jumbo v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getDraggingView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->cancelDrag()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    const v4, 0x7f0a040e

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    goto :goto_0

    :cond_a
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iskiosk enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)I

    :cond_b
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerReceiverAndObserverAsUser: mCurrentUserId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    goto/16 :goto_0
.end method
