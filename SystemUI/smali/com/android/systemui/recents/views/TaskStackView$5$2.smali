.class Lcom/android/systemui/recents/views/TaskStackView$5$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/TaskStackView$5;

.field final synthetic val$trigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView$5;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$5$2;->this$1:Lcom/android/systemui/recents/views/TaskStackView$5;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$5$2;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackView$5$2;->val$trigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$5$2;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$5$2;->val$trigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method
