.class Lcom/android/systemui/statusbar/phone/StatusBar$17$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$17;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$17;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$17;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Clearing all notification from aecmonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0x94

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllNotifications()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_0
    return-void
.end method
