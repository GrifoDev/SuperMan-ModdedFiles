.class Lcom/android/systemui/keyguard/WorkLockActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-static {v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->-wrap0(Lcom/android/systemui/keyguard/WorkLockActivity;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->finish()V

    :cond_0
    return-void
.end method
