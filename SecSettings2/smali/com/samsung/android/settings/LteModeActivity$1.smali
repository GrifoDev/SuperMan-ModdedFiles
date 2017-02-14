.class Lcom/samsung/android/settings/LteModeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LteModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LteModeActivity$1;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/LteModeActivity;->-set0(Z)Z

    const-string/jumbo v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : airmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/LteModeActivity;->-get0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/LteModeActivity;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity$1;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LteModeActivity;->-wrap1(Lcom/samsung/android/settings/LteModeActivity;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity$1;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/LteModeActivity;->-wrap2(Lcom/samsung/android/settings/LteModeActivity;)V

    goto :goto_0
.end method
