.class Landroid/widget/TimePickerClockDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->-get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinute(I)V

    return-void
.end method
