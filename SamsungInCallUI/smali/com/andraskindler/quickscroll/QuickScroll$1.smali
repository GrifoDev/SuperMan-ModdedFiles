.class Lcom/andraskindler/quickscroll/QuickScroll$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andraskindler/quickscroll/QuickScroll;->init(ILandroid/widget/ListView;Landroid/view/ViewGroup;Lcom/andraskindler/quickscroll/Scrollable;I[Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andraskindler/quickscroll/QuickScroll;

.field final synthetic val$scrollable:Lcom/andraskindler/quickscroll/Scrollable;


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/QuickScroll;Lcom/andraskindler/quickscroll/Scrollable;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/QuickScroll$1;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/QuickScroll$1;->val$scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll$1;->val$scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/andraskindler/quickscroll/Scrollable;->selectedAlphabet(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll$1;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/andraskindler/quickscroll/QuickScroll;->isScrolling:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
