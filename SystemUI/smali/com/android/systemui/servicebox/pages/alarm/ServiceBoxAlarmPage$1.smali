.class Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage$1;
.super Ljava/lang/Object;
.source "ServiceBoxAlarmPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage$1;->this$0:Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage$1;->this$0:Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->-wrap0(Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick() callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
