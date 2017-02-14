.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v0, "ColorChipReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mClearControlListener :: onProgressChanged() is called start progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fromUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    int-to-float v2, p2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-set0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;F)F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v0

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v3

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged() mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cvdTyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCVDSeverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UserPara "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onStartTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onStopTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
