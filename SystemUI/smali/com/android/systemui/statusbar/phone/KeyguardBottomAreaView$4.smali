.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 0

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method
