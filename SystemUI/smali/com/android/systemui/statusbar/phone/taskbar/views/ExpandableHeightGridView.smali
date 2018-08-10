.class public Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->expanded:Z

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method
