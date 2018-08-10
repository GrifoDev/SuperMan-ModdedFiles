.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->initPocUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v3, "PocBalanceSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[stpoc] change preset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setPocUserIndexTemp(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocImageFromArray(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0437

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
