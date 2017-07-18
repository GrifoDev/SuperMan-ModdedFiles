.class Lcom/android/contacts/common/dialog/CallSubjectDialog$7;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

.field final synthetic val$dialogStartingBottom:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;Landroid/view/ViewTreeObserver;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$dialogStartingBottom:I

    iput-boolean p4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$dialogStartingBottom:I

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v0, v1, v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$show:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
