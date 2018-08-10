.class Landroid/widget/TimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    const/16 v2, 0xc

    const/16 v1, 0xb

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_1

    if-ne p3, v2, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    goto :goto_0
.end method
