.class Lcom/android/keyguard/KeyguardPatternView$3;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap1(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method
