.class Lcom/android/incallui/InCallActivity$17;
.super Landroid/database/ContentObserver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$1600(Lcom/android/incallui/InCallActivity;Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_0
    return-void
.end method
