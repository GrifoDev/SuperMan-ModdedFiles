.class Lcom/android/systemui/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap0(Lcom/android/systemui/qs/QSPanel;Z)V

    :cond_0
    return-void
.end method

.method public onScrollToDetail(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->-wrap1(Lcom/android/systemui/qs/QSPanel;II)V

    :cond_0
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->shouldShowDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSPanel;->-wrap2(Lcom/android/systemui/qs/QSPanel;Z)V

    :cond_0
    return-void
.end method

.method public onUpdateDetail()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V

    :cond_0
    return-void
.end method
