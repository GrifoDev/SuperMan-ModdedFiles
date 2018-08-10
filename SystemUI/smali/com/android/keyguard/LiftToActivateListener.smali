.class Lcom/android/keyguard/LiftToActivateListener;
.super Ljava/lang/Object;
.source "LiftToActivateListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCachedClickableState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v5, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
