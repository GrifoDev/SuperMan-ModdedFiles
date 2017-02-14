.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->-get3(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v0, v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    goto :goto_0
.end method
