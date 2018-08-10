.class Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;
.super Ljava/lang/Object;
.source "ZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->inflateRepeatBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

.field final synthetic val$buttonNumber:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenScheduleRepeatButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRepeatBtn[buttonNumber].isChecked() - true, buttonNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-wrap0(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)V

    return-void

    :cond_0
    const-string/jumbo v0, "ZenScheduleRepeatButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRepeatBtn[buttonNumber].isChecked() - false, buttonNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    goto :goto_0
.end method
