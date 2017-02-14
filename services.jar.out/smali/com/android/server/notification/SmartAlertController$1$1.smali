.class Lcom/android/server/notification/SmartAlertController$1$1;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController$1;->onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/SmartAlertController$1;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-get1(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SmartAlertController"

    const-string/jumbo v1, "SmartAlert - inCall, vibration will be returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SmartAlertController"

    const-string/jumbo v1, "SmartAlert - vibrate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-get5(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v1, v1, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->-get3(Lcom/android/server/notification/SmartAlertController;)[J

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    goto :goto_0
.end method
