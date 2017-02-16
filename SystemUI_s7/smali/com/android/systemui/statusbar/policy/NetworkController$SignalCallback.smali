.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalCallback"
.end annotation


# virtual methods
.method public abstract setBtTetherVisible(Z)V
.end method

.method public abstract setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
.end method

.method public abstract setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setMPTCPIndicators(ZIII)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setNWBoosterIndicators(ZZIII)V
.end method

.method public abstract setNoSims(Z)V
.end method

.method public abstract setRssiTypeIcon(II)V
.end method

.method public abstract setSimIcon(ZI)V
.end method

.method public abstract setSlotFocusVisible(ZII)V
.end method

.method public abstract setSubs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;)V
.end method
