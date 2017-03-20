.class Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "InCallUIExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private updateERI()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    .line 97
    .local v0, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateEri()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v1, "CallCardPresenter is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 76
    .local v0, "newState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 78
    .local v2, "roaming":Z
    iget-object v3, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    # getter for: Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I
    invoke-static {v3}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->access$000(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 79
    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setServiceState(I)V

    .line 81
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setRoaming(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "operatorAlphaLong":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/wrapper/ServiceStateWrapper;->canCellularVoiceService(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 86
    const-string v3, "operatorAlphaLog set to null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->updateERI()V

    .line 92
    iget-object v3, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    # setter for: Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I
    invoke-static {v3, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->access$002(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;I)I

    .line 93
    return-void
.end method
