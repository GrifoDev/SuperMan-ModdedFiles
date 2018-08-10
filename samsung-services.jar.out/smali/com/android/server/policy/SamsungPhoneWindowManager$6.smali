.class Lcom/android/server/policy/SamsungPhoneWindowManager$6;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapLaunchCommand:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    :cond_0
    return-void
.end method
