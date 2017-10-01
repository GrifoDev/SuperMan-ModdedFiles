.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;
.super Ljava/lang/Object;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->hideCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    const v9, 0x7f110433

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    return v8

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110434

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/widget/SineInOut70;

    invoke-direct {v7}, Lcom/samsung/android/settings/widget/SineInOut70;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/widget/SineInOut70;

    invoke-direct {v7}, Lcom/samsung/android/settings/widget/SineInOut70;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3$2;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v8
.end method
