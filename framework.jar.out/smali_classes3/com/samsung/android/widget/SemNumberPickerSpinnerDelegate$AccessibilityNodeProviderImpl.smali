.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x2

.field private static final VIRTUAL_VIEW_ID_DECREMENT_EX:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x4

.field private static final VIRTUAL_VIEW_ID_INCREMENT_EX:I = 0x5

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x3


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    move-object v2, v1

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v4}, Lcom/samsung/android/widget/SemNumberPicker;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_4

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_5

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_7

    :cond_6
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_9

    :cond_8
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_9
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v1, v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemNumberPicker;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    const/4 v5, 0x3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v0}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v1, v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemNumberPicker;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getVirtualCurrentButtonText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get27(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get28(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get27(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get28(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getVirtualDecrementExButtonText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get27(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get28(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get27(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get28(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementExButtonText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get27(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get28(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private hasVirtualDecrementButton()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementExButton()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementExButton()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getRight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getTop()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getScrollX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getScrollY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get14(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get15(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    if-nez v13, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    :cond_2
    return-object v13

    :pswitch_1
    sub-int v1, v16, v15

    add-int/2addr v1, v4

    sub-int v2, v14, v17

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementExButtonText()Ljava/lang/String;

    move-result-object v3

    sub-int v1, v16, v15

    add-int v6, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int v7, v1, v2

    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    add-int v10, v1, v5

    sub-int v1, v16, v15

    add-int v11, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int v12, v1, v2

    const/4 v7, 0x2

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v16, v15

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v6

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    sub-int v1, v16, v15

    add-int v11, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v12

    const/4 v7, 0x4

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementExButtonText()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int v10, v1, v2

    sub-int v1, v16, v15

    add-int v11, v4, v1

    sub-int v1, v14, v17

    add-int v12, v5, v1

    const/4 v7, 0x5

    move-object/from16 v6, p0

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    const/high16 v7, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get13(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v2

    return v2

    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->requestAccessibilityFocus()Z

    return v6

    :cond_1
    return v5

    :sswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_2

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->clearAccessibilityFocus()V

    return v6

    :cond_2
    return v5

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    return v6

    :cond_4
    return v5

    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    return v6

    :cond_6
    return v5

    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    :sswitch_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    return v2

    :sswitch_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    return v6

    :cond_7
    return v5

    :sswitch_6
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    return v6

    :cond_8
    return v5

    :sswitch_7
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performLongClick()V

    return v6

    :cond_9
    return v5

    :sswitch_8
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_a

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_a
    return v5

    :sswitch_9
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_b

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_b
    return v5

    :cond_c
    return v5

    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    return v5

    :sswitch_a
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_d
    return v5

    :sswitch_b
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_e

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_e
    return v5

    :sswitch_c
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_f

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_f
    return v5

    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    return v5

    :sswitch_d
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_10
    return v5

    :sswitch_e
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_11

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v1, v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_11
    return v5

    :sswitch_f
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_12

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v1, v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_12
    return v5

    :pswitch_5
    sparse-switch p2, :sswitch_data_4

    return v5

    :sswitch_10
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_13
    return v5

    :sswitch_11
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_14

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_14
    return v5

    :sswitch_12
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_15

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v1, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_15
    return v5

    :pswitch_6
    sparse-switch p2, :sswitch_data_5

    return v5

    :sswitch_13
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_16
    return v5

    :sswitch_14
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_17

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v5, v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_17
    return v5

    :sswitch_15
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_18

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v5, v5, v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    return v6

    :cond_18
    return v5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_10
        0x40 -> :sswitch_11
        0x80 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x10 -> :sswitch_13
        0x40 -> :sswitch_14
        0x80 -> :sswitch_15
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementExButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
