.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
