.class public Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;
.super Ljava/lang/Object;
.source "DividerSnapViewWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;II)V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x900

    const v4, 0x40020

    const/4 v5, -0x3

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "DividerSnapView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public remove()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapView;

    const-string/jumbo v1, "finish"

    invoke-virtual {v0, v3, v3, v2, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->makeVisible(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setTouchable(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    goto :goto_0
.end method
