.class Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;
.super Ljava/lang/Object;
.source "DividerCloseButtonWindowManager.java"


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

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;II)V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x902

    const/16 v4, 0x8

    const/4 v5, -0x3

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "DividerCloseButtonWhileMinimized"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->mView:Landroid/view/View;

    return-void
.end method
