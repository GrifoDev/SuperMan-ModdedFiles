.class Lcom/android/launcher2/IconMoveContainerHelpView$2;
.super Ljava/lang/Object;
.source "IconMoveContainerHelpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainerHelpView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainerHelpView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainerHelpView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_Step:B
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$000(Lcom/android/launcher2/IconMoveContainerHelpView;)B

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mDumyView_Top:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$100(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mDumyView_Bottom:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$200(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_ImgView:Landroid/widget/ViewSwitcher;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$300(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/ViewSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_MgsText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$400(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$500(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f080083

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mDumyView_Top:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$100(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # operator++ for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_Step:B
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$008(Lcom/android/launcher2/IconMoveContainerHelpView;)B

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_Step:B
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$000(Lcom/android/launcher2/IconMoveContainerHelpView;)B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$600(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;-><init>(Lcom/android/launcher2/IconMoveContainerHelpView$2;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
