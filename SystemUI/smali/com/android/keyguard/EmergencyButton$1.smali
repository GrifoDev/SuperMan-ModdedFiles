.class Lcom/android/keyguard/EmergencyButton$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyButton;->-set2(Lcom/android/keyguard/EmergencyButton;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-wrap2(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-wrap2(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-wrap2(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyButton;->-set3(Lcom/android/keyguard/EmergencyButton;I)I

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0, p3}, Lcom/android/keyguard/EmergencyButton;->-set0(Lcom/android/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-wrap2(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method
