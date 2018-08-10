.class Lcom/android/systemui/statusbar/phone/StatusBar$30;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$30;->getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get49(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap37(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V

    goto :goto_0
.end method
