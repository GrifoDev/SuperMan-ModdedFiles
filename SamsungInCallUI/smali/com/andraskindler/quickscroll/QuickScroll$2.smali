.class Lcom/andraskindler/quickscroll/QuickScroll$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/QuickScroll;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/QuickScroll$2;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll$2;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    iget-boolean v0, v0, Lcom/andraskindler/quickscroll/QuickScroll;->isScrolling:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
