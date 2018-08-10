.class Lcom/android/systemui/qs/QSDetail$6;
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

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-get1(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTileString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "4002"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get5(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method
