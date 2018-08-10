.class Lcom/android/systemui/LatencyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "LatencyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/LatencyTester;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/LatencyTester;


# direct methods
.method constructor <init>(Lcom/android/systemui/LatencyTester;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-static {v1}, Lcom/android/systemui/LatencyTester;->-wrap1(Lcom/android/systemui/LatencyTester;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.android.systemui.latency.ACTION_TURN_ON_SCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-static {v1}, Lcom/android/systemui/LatencyTester;->-wrap0(Lcom/android/systemui/LatencyTester;)V

    goto :goto_0
.end method
