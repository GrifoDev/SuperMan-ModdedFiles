.class public Landroid/view/NotificationHeaderView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationHeaderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private final mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private mTrackGesture:Z

.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method static synthetic -wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 1

    iput-object p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    return-void
.end method

.method private addRectAroundViewView(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addWidthRect()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v1, v3, v2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private isInside(FF)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-get0(Landroid/view/NotificationHeaderView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public bindTouchRects()V
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get4(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addWidthRect()V

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    return v2

    :pswitch_0
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    invoke-direct {p0, v0, v1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    iput v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    iput-boolean v5, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    const/16 v2, 0x2002

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    :cond_1
    return v5

    :pswitch_1
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_2
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
