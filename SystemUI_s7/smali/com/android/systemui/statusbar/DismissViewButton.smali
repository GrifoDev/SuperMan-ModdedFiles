.class public Lcom/android/systemui/statusbar/DismissViewButton;
.super Lcom/android/systemui/statusbar/AlphaOptimizedButton;
.source "DismissViewButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/DismissViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissViewButton;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissViewButton;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
