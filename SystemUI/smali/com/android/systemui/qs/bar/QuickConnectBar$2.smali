.class Lcom/android/systemui/qs/bar/QuickConnectBar$2;
.super Landroid/content/BroadcastReceiver;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$2;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$2;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    iget-object v2, v2, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive package remoteView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.oneconnect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$2;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/bar/QuickConnectBar;->receiveRemoteView(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
