.class Lcom/android/systemui/qs/QSDetail$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTileString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "4002"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "299"

    invoke-static {v1}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    return-void
.end method
