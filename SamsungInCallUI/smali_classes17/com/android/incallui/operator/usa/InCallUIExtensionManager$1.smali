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

    iput-object p1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private updateERI()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateEri()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CallCardPresenter is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->access$000(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setServiceState(I)V

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setRoaming(Z)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/wrapper/ServiceStateWrapper;->canCellularVoiceService(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    const-string v3, "operatorAlphaLog set to null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setOperatorAlphaLong(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->updateERI()V

    iget-object v3, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-static {v3, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->access$002(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;I)I

    return-void
.end method
