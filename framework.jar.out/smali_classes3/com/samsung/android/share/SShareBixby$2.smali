.class Lcom/samsung/android/share/SShareBixby$2;
.super Landroid/content/BroadcastReceiver;
.source "SShareBixby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareBixby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareBixby;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "com.samsung.android.chooser.DEBUG_APPNAME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    const-string/jumbo v1, "BIXBY_SHAREVIA_APPNAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/share/SShareBixby;->-set0(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SShareBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDebugAppName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get1(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
