.class public Lcom/android/contacts/common/list/ContactListPinnedHeaderView;
.super Landroid/widget/TextView;
.source "ContactListPinnedHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v6, Lcom/android/incallui/R$styleable;->ContactListItemView:[I

    if-nez v6, :cond_0

    .line 69
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/R$styleable;->ContactListItemView:[I

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 46
    .local v1, "backgroundColor":I
    const/16 v6, 0x17

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 48
    .local v3, "textOffsetTop":I
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 50
    .local v2, "paddingStartOffset":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0403

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 52
    .local v4, "textWidth":I
    add-int v5, v2, v4

    .line 53
    .local v5, "widthIncludingPadding":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b014a

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setTextAppearance(Landroid/content/Context;I)V

    .line 57
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setLayoutDirection(I)V

    .line 60
    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    :goto_1
    or-int/lit8 v6, v6, 0x10

    .line 59
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setGravity(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingStart()I

    move-result v6

    add-int/2addr v6, v2

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingTop()I

    move-result v7

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingEnd()I

    move-result v8

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingBottom()I

    move-result v9

    .line 64
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v6, 0x3

    goto :goto_1
.end method


# virtual methods
.method public setSectionHeaderTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setVisibility(I)V

    goto :goto_0
.end method
