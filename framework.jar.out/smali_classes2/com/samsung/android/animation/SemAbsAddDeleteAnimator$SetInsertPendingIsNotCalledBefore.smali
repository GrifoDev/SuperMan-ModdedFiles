.class Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;
.super Ljava/lang/RuntimeException;
.source "SemAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetInsertPendingIsNotCalledBefore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    const-string/jumbo v0, "setInsertPending() should be called prior to calling insertFromAdapterCompleted()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
