.class public Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardShortcutAppItemLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    const v5, 0x7f0a024b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f0a024d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->getPaddingRight()I

    move-result v6

    add-int v4, v5, v6

    sub-int v0, v3, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_0
    int-to-double v6, v0

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
