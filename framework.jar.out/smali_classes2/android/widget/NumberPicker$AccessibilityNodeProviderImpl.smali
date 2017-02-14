.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

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

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-wrap0(Landroid/widget/NumberPicker;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    move-object v2, v1

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_2

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_3

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    :cond_4
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_7

    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
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

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v1, v0

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    const/4 v5, 0x2

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v1, v0

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

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

    const/4 v4, 0x2

    packed-switch p2, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

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

    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private hasVirtualDecrementButton()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

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

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

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

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

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

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int v6, v0, v1

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v1

    sub-int v4, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
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
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    const/high16 v4, 0x10000

    const v3, 0x8000

    const/high16 v2, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v1

    return v1

    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    return v6

    :cond_0
    return v5

    :sswitch_1
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_1

    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->clearAccessibilityFocus()V

    return v6

    :cond_1
    return v5

    :sswitch_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    return v6

    :cond_3
    return v5

    :sswitch_3
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v5}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    return v6

    :cond_5
    return v5

    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    :sswitch_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v5

    :cond_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    return v1

    :sswitch_5
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    return v6

    :cond_8
    return v5

    :sswitch_6
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performClick()Z

    return v6

    :cond_9
    return v5

    :sswitch_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performLongClick()Z

    return v6

    :cond_a
    return v5

    :sswitch_8
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_b

    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v6

    :cond_b
    return v5

    :sswitch_9
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_c

    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v6

    :cond_c
    return v5

    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    return v5

    :sswitch_a
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_d
    return v5

    :sswitch_b
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_e

    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_e
    return v5

    :sswitch_c
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_f

    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_f
    return v5

    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    return v5

    :sswitch_d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    if-ne p1, v6, :cond_10

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v6

    :cond_10
    const/4 v0, 0x0

    goto :goto_1

    :cond_11
    return v5

    :sswitch_e
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_12

    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_12
    return v5

    :sswitch_f
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_13

    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return v6

    :cond_13
    return v5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
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
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
