.class Lcom/android/systemui/qs/QSTileHost$1;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateQuickPanelItems()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileHost;->-get2(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->-set0(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)Ljava/util/List;

    const-string/jumbo v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateQuickPanelItems : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->-get1(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->-get0(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->-wrap0(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    return-void
.end method
