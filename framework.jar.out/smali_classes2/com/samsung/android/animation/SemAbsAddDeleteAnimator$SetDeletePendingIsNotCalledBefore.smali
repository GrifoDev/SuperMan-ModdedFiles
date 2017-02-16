.class Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;
.super Ljava/lang/RuntimeException;
.source "SemAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetDeletePendingIsNotCalledBefore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    .line 232
    const-string/jumbo v0, "setDeletePending() should be called prior to calling deleteFromAdapterCompleted()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 231
    return-void
.end method
