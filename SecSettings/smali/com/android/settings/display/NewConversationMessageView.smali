.class public Lcom/android/settings/display/NewConversationMessageView;
.super Landroid/widget/LinearLayout;
.source "NewConversationMessageView.java"


# instance fields
.field private mContactIconRecvView:Landroid/widget/TextView;

.field private mContactIconSentView:Landroid/widget/TextView;

.field private mConversationItemView:Landroid/widget/LinearLayout;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private final mIsFirstItem:Z

.field private final mIsLastItem:Z

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIsFirstItem:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIsLastItem:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/NewConversationMessageView;->mIconBackgroundColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01a8

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/display/NewConversationMessageView;->initConversationItemView()V

    return-void
.end method

.method private initContactIcon()V
    .locals 6

    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0268

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080122

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080123

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080124

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initConversationItemView()V
    .locals 2

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0527

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0526

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/NewConversationMessageView;->initMessageBubbleView()V

    invoke-direct {p0}, Lcom/android/settings/display/NewConversationMessageView;->initContactIcon()V

    invoke-direct {p0}, Lcom/android/settings/display/NewConversationMessageView;->setConversationListItemPadding()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private initMessageBubbleView()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070578

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v9, 0x7f070579

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f070577

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v9, 0x7f070585

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_0

    const v3, 0x7f06012c

    :goto_0
    iget-boolean v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_1

    const v2, 0x7f080125

    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4, v8, v4, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v3, 0x7f06012f

    goto :goto_0

    :cond_1
    const v2, 0x7f080126

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v10, v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f060181

    iget-boolean v9, p0, Lcom/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_3

    const v2, 0x7f080428

    goto :goto_1

    :cond_3
    const v2, 0x7f080429

    goto :goto_1
.end method

.method private setConversationListItemPadding()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/settings/display/NewConversationMessageView;->mIsFirstItem:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    const v5, 0x7f0703d5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    if-eqz v1, :cond_3

    const v5, 0x7f0703d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/display/NewConversationMessageView;->mIsLastItem:Z

    if-eqz v5, :cond_0

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    const v5, 0x7f0703d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    iget-object v5, p0, Lcom/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v6, v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const v5, 0x7f0703d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const v5, 0x7f0703d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateTextScale(IF)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public setTextScale(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/NewConversationMessageView;->updateTextScale(IF)V

    return-void
.end method
