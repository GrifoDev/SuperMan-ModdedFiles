.class Lcom/samsung/android/directpeninput/SemDirectPenInput$7;
.super Landroid/os/ResultReceiver;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/directpeninput/SemDirectPenInput;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2625
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x96

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2626
    return-void
.end method
