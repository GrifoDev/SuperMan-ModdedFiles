.class Lcom/android/settings/datausage/AppDataUsage$4;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/settings/datausage/AppDataUsage;->-wrap4(Lcom/android/settings/datausage/AppDataUsage;I)V

    const-string/jumbo v3, "AppDataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the mCycleSpinnerPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings/datausage/AppDataUsage;->-get6(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->-get6(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3, p3}, Lcom/android/settings/datausage/AppDataUsage;->-set1(Lcom/android/settings/datausage/AppDataUsage;I)I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set4(Lcom/android/settings/datausage/AppDataUsage;J)J

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set2(Lcom/android/settings/datausage/AppDataUsage;J)J

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-wrap3(Lcom/android/settings/datausage/AppDataUsage;)V

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b035c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-set6(I)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get15(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v4}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get18()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v3}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
