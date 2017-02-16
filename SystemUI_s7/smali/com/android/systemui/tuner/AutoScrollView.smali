.class public Lcom/android/systemui/tuner/AutoScrollView;
.super Landroid/widget/ScrollView;
.source "AutoScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/AutoScrollView;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    if-ge v2, v1, :cond_1

    sub-int v3, v2, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/tuner/AutoScrollView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    sub-int v3, v0, v1

    if-le v2, v3, :cond_0

    sub-int v3, v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/tuner/AutoScrollView;->scrollBy(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
