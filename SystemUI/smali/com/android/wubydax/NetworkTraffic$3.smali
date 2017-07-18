.class Lcom/android/wubydax/NetworkTraffic$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wubydax/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wubydax/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/wubydax/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wubydax/NetworkTraffic$3;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wubydax/NetworkTraffic$3;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v1}, Lcom/android/wubydax/NetworkTraffic;->access$2000(Lcom/android/wubydax/NetworkTraffic;)V

    :cond_0
    return-void
.end method
