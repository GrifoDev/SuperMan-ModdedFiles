.class Lcom/android/systemui/statusbar/BaseStatusBar$6$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$6;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$fillInIntent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$6;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$afterKeyguardGone:Z

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$view:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-static {v2, v5, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$6;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, v2, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$afterKeyguardGone:Z

    if-eqz v2, :cond_4

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_2
    return v1

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method
