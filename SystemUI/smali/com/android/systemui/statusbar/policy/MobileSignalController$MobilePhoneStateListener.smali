.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCellLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get8(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get9(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get7(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get6(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "!@Boot: Data SVC is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dataNetType:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    aput v2, v0, v1

    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIndianOperator(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set4(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged voiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "!@Boot: Voice SVC is acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set5(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->mSubId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->mSubId:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const v3, 0x10402b1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get10(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dataNetType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    aput v3, v1, v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set6(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get11(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
