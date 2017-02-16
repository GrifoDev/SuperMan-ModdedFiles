.class Lcom/android/systemui/statusbar/policy/NightModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "NightModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NightModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NightModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NightModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NightModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "android.intent.action.TWILIGHT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/NightModeController;->-wrap1(Lcom/android/systemui/statusbar/policy/NightModeController;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->-wrap0(Lcom/android/systemui/statusbar/policy/NightModeController;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->-get0(Lcom/android/systemui/statusbar/policy/NightModeController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NightModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->-get0(Lcom/android/systemui/statusbar/policy/NightModeController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NightModeController$Listener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NightModeController$Listener;->onNightModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
