.class Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSingleClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    const-string/jumbo v1, "KeyguardSingleClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timezone updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", update Keyguard Singleclock View"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClock;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
