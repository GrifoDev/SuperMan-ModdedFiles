.class Lcom/android/systemui/qs/bar/QuickConnectBar$1;
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

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$1;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$1;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intent receive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$1;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/bar/QuickConnectBar;->receiveRemoteView(Landroid/content/Intent;)V

    return-void
.end method
