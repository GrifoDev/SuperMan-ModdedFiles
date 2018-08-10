.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$IconState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        ">;",
        "Lcom/android/systemui/DemoMode;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public abstract addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract addOperatorLogoIconListener(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
.end method

.method public abstract getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
.end method

.method public abstract hasEmergencyCryptKeeperText()Z
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract onEmergencyModeChanged()V
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public abstract removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract setCarrierLabel(Landroid/widget/TextView;)V
.end method

.method public abstract setCarrierLabelSlot1(Landroid/widget/TextView;)V
.end method

.method public abstract setCarrierLabelSlot2(Landroid/widget/TextView;)V
.end method

.method public abstract setStatusBarCarrierLabel(Landroid/widget/TextView;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
