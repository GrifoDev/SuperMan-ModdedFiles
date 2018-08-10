.class Lcom/android/server/power/Notifier$9;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$9;->val$why:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v6, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget v1, p0, Lcom/android/server/power/Notifier$9;->val$why:I

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget v1, p0, Lcom/android/server/power/Notifier$9;->val$why:I

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get7(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$9;->val$why:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->finishedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get9(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "why"

    iget v2, p0, Lcom/android/server/power/Notifier$9;->val$why:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get9(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v2}, Lcom/android/server/power/Notifier;->-get3(Lcom/android/server/power/Notifier;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
