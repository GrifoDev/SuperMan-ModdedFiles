.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

.field final synthetic val$forwardDistance:I


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;
    .param p2, "val$forwardDistance"    # I

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iput p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1883
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;I)V

    .line 1910
    const-wide/16 v2, 0x64

    .line 1883
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1882
    return-void
.end method
