.class Lcom/android/contacts/common/dialog/CallSubjectDialog$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;Landroid/view/ViewTreeObserver;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->a:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->b:I

    iput-boolean p4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->b:I

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->d:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
