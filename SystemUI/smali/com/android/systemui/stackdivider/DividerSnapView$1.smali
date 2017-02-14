.class Lcom/android/systemui/stackdivider/DividerSnapView$1;
.super Ljava/lang/Object;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerSnapView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$1;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView$1;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView$1;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v3, p1, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-wrap0(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapView;->-set0(Lcom/android/systemui/stackdivider/DividerSnapView;I)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView$1;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v2, p1, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-wrap1(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)V

    goto :goto_0
.end method
