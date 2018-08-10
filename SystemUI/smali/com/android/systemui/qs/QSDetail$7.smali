.class Lcom/android/systemui/qs/QSDetail$7;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$7;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v3, v3, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v3, v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v3, v3, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v3}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v3}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTileString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "4001"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    int-to-long v6, v3

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
