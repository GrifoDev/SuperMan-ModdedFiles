.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->run()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    :cond_0
    return-void
.end method

.method public isPending()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    return-void
.end method
