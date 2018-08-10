.class Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v5, 0x1f4

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->-set0(Landroid/widget/CalendarViewLegacyDelegate;I)I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get11(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get6(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get6(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get5(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->-set1(Landroid/widget/CalendarViewLegacyDelegate;I)I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0
.end method
