.class Landroid/widget/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 779
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focused"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 782
    if-eqz p2, :cond_0

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 798
    :pswitch_0
    return-void

    .line 785
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;I)V

    .line 801
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;)V

    .line 781
    :cond_0
    return-void

    .line 788
    :pswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 791
    :pswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 794
    :pswitch_4
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x10204fc
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
