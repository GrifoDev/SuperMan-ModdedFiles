.class Lcom/samsung/android/share/SShareBixby$1;
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

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby$1;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "com.samsung.android.chooser.ACTION_EM_COMMAND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/share/executor/CommandObserver;->getInstance()Lcom/samsung/android/share/executor/CommandObserver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/share/executor/CommandObserver;->notify(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
