.class Lcom/android/server/policy/SamsungPhoneWindowManager$19;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$19;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get11()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get11()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$19;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "PWM_ROTATION"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->update(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get14()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get14()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$19;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DEVICE_WAKEUP"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->update(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
