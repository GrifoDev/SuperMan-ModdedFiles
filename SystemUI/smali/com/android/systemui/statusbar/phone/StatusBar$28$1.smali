.class Lcom/android/systemui/statusbar/phone/StatusBar$28$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$28;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

.field final synthetic val$fillInIntent:Landroid/content/Intent;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$28;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$28;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$28;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
