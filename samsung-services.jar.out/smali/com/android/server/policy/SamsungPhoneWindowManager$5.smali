.class Lcom/android/server/policy/SamsungPhoneWindowManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-boolean v2, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    invoke-static {p1}, Lcom/android/server/policy/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap1(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
