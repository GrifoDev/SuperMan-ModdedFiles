.class Lcom/android/server/policy/SamsungPhoneWindowManager$21;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v3, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PWM_DEBUG"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    array-length v3, v2

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    const/4 v0, 0x1

    aget-boolean v3, v2, v3

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v0, 0x1

    aget-boolean v3, v2, v0

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v0, v1, 0x1

    aget-boolean v3, v2, v1

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v0, 0x1

    aget-boolean v3, v2, v0

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v0, v1, 0x1

    aget-boolean v3, v2, v1

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v0, 0x1

    aget-boolean v3, v2, v0

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v0, v1, 0x1

    aget-boolean v3, v2, v1

    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    :cond_1
    return-void
.end method
