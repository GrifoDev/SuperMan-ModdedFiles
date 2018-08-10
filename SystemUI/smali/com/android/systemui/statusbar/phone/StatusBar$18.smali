.class Lcom/android/systemui/statusbar/phone/StatusBar$18;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v2, "mlstatus"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_MIRROR_LINK, mlstatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;ZJ)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;ZJ)V

    goto :goto_1
.end method
