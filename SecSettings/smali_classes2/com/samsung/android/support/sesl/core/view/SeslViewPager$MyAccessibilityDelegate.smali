.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;
.super Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    move-object v0, p2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V

    const-class v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    return v2

    :cond_0
    return v3

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    return v3

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
