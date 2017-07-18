.class Lcom/android/systemui/statusbar/policy/BatteryBarController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    const-string v3, "level"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$102(Lcom/android/systemui/statusbar/policy/BatteryBarController;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    const-string v3, "status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$202(Lcom/android/systemui/statusbar/policy/BatteryBarController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$100(Lcom/android/systemui/statusbar/policy/BatteryBarController;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/Prefs;->setLastBatteryLevel(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
