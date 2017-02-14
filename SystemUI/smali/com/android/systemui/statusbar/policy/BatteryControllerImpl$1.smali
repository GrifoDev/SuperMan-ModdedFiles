.class Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;
.super Ljava/lang/Object;
.source "BatteryControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->saveLevel:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->savePlugged:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    if-gez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "level"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->saveLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "plugged"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->savePlugged:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "level"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "plugged"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
