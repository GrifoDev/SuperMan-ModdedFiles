.class Lcom/android/systemui/statusbar/policy/MinitClock$1;
.super Landroid/content/BroadcastReceiver;
.source "MinitClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "three.minit.SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$000(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$100(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$200(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$200(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    goto :goto_0
.end method
