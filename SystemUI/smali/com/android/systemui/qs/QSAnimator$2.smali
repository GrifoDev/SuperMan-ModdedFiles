.class Lcom/android/systemui/qs/QSAnimator$2;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSAnimator;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/QSAnimator;->-wrap0(Lcom/android/systemui/qs/QSAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v1}, Lcom/android/systemui/qs/QSAnimator;->-get0(Lcom/android/systemui/qs/QSAnimator;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method
