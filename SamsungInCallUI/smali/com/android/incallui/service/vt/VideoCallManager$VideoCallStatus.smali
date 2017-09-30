.class public Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoCallStatus"
.end annotation


# instance fields
.field public capturedHideMeImage:Ljava/lang/String;

.field public isEnoughSpaceForAnswer:Z

.field public isExchangedViews:Z

.field public isLivePreview:Z

.field public isLowQuality:Z

.field public isScreenResized:Z

.field public isSwapProgressing:Z

.field public isSwitchCameraClicked:Z

.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/vt/VideoCallManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isScreenResized:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->capturedHideMeImage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isEnoughSpaceForAnswer:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwapProgressing:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLowQuality:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isScreenResized:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->capturedHideMeImage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isEnoughSpaceForAnswer:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwapProgressing:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLowQuality:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " VideoCallStatus {LivePreview=%s, CameraSwitching=%s, ExchangedView=%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
