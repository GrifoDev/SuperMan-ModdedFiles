.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap3(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Lcom/samsung/android/widget/SemNumberPicker;Z)V

    return-void
.end method
