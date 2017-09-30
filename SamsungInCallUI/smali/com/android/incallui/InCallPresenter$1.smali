.class Lcom/android/incallui/InCallPresenter$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/16 v1, 0x3ee

    const-string v0, "mContactUpdateObserver : onChange "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
