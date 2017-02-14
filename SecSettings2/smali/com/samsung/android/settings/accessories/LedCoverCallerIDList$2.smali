.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;
.super Ljava/lang/Object;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->showCheckBox()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a06e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f110435

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/widget/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/settings/widget/SineInOut70;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f110436

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/widget/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/settings/widget/SineInOut70;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    iget-object v6, v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return v7
.end method
