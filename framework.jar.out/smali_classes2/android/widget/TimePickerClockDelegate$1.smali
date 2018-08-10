.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v4, v4, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v6}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    if-eq v3, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->-get0(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, p3

    :goto_1
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v3, p2, v5, v4}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;IIZ)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v4, 0x0

    invoke-static {v3, v5, v5, v4}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v3, p2}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;I)I

    move-result v1

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->-get5(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    if-eq v3, p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v3, p2, v5}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
