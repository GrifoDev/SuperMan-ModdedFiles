.class Lcom/android/incallui/service/VideoPipService$PipDisplayListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/VideoPipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PipDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/VideoPipService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/VideoPipService$PipDisplayListener;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService$PipDisplayListener;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/VideoPipService;->canShow(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->notifyRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
