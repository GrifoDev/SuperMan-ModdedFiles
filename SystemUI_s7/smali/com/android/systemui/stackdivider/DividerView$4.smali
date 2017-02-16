.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$dismissPosition:Landroid/graphics/Point;

.field final synthetic val$snapTargetPosition:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$snapTargetPosition:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$dismissPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$snapTargetPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$dismissPosition:Landroid/graphics/Point;

    invoke-static {v0, v1, v4}, Lcom/android/systemui/stackdivider/DividerView;->-wrap2(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    return-void
.end method
