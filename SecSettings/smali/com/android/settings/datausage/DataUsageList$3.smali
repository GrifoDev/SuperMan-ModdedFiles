.class Lcom/android/settings/datausage/DataUsageList$3;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/samsung/android/widget/SemDatePicker;JJ)V
    .locals 8

    const/4 v6, 0x1

    const-string/jumbo v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDateSet(), mStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get2(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-wrap6(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/CycleAdapter;->setIsSettedDate(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/datausage/CycleAdapter;->setStartTime(J)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/settings/datausage/CycleAdapter;->setEndTime(J)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v7

    new-instance v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    invoke-virtual {v7, v0}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get5(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
