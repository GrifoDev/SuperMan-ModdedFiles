.class Lcom/android/incallui/service/vt/VideoCallManager$2;
.super Lcom/android/incallui/service/vt/InCallRotationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/VideoCallManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {p0, p2}, Lcom/android/incallui/service/vt/InCallRotationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onRotationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->access$100(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/service/vt/InCallRotationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$2;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onDisplayRotationChanged(I)V

    goto :goto_0
.end method
