.class Lcom/android/keyguard/KeyguardCarrierView$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardCarrierView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->-get0(Lcom/android/keyguard/KeyguardCarrierView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->-wrap1(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->-wrap3(Lcom/android/keyguard/KeyguardCarrierView;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->-wrap0(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_0
.end method
