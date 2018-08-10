.class Lcom/android/server/policy/SamsungPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "runnable start for activekey wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set1(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get1(Lcom/android/server/policy/SamsungPhoneWindowManager;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto :goto_0
.end method
