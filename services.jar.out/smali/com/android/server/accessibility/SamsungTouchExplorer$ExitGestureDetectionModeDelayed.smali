.class final Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGestureDetectionModeDelayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get3(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/high16 v1, 0x4000000

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get1(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->resetMultiFingerGestureState()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method
