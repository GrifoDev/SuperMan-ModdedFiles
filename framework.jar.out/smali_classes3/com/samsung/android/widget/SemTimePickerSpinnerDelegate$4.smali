.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    .line 173
    return-void
.end method
