.class Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get0(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v0, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v3, v3, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get1(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get2(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
