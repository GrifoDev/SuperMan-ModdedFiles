.class Lcom/android/incallui/SelectSimActivity$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectSimActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectSimActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$1;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_SCREEN_OFF..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity$1;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    :cond_0
    return-void
.end method
