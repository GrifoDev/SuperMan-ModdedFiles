.class Lcom/android/launcher2/Launcher$32;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Launcher"

    const-string v1, "MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/Launcher;->setWorkIconGray(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1800(Lcom/android/launcher2/Launcher;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Launcher"

    const-string v1, "MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    # invokes: Lcom/android/launcher2/Launcher;->setWorkIconGray(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1800(Lcom/android/launcher2/Launcher;Z)V

    goto :goto_0
.end method
