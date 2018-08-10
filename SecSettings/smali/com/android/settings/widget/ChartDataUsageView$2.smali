.class Lcom/android/settings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartDataUsageView;->-wrap5(Lcom/android/settings/widget/ChartDataUsageView;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartDataUsageView;->-get0(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartDataUsageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartDataUsageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartDataUsageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartDataUsageView;->-get0(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    return-void
.end method
