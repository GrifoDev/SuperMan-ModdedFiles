.class Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReferenceCountedTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasEnded:Z

.field final synthetic this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;->this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;->hasEnded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;->this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;->hasEnded:Z

    return-void
.end method
