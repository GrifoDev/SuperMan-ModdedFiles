.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->reloadUserInfo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->reloadUserInfo()V

    goto :goto_0
.end method
