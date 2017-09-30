.class public Lcom/andraskindler/quickscroll/QuickScroll;
.super Landroid/view/View;


# static fields
.field public static final BLUE_LIGHT:I

.field public static final BLUE_LIGHT_SEMITRANSPARENT:I

.field public static final GREY_DARK:I

.field public static final GREY_LIGHT:I

.field public static final GREY_SCROLLBAR:I

.field protected static final ID_PIN:I = 0x200

.field protected static final ID_PIN_TEXT:I = 0x201

.field public static final POPUP_TEXT_BACKGROUND_COLOR:I

.field public static final POPUP_TEXT_COLOR:I

.field protected static final SCROLLBAR_MARGIN:I = 0xa

.field public static final STYLE_HOLO:I = 0x1

.field public static final STYLE_NONE:I = 0x0

.field protected static final TEXT_PADDING:I = 0x4

.field public static final TYPE_INDICATOR:I = 0x1

.field public static final TYPE_INDICATOR_WITH_HANDLE:I = 0x3

.field public static final TYPE_POPUP:I = 0x0

.field public static final TYPE_POPUP_WITH_HANDLE:I = 0x2


# instance fields
.field private final ALPHABET_COUNT:I

.field public final TEXT_COLOR:I

.field activity:Landroid/app/Activity;

.field protected fadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field protected fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field protected groupPosition:I

.field protected handleBar:Landroid/view/View;

.field protected isInitialized:Z

.field protected isScrolling:Z

.field protected itemCount:I

.field protected listParent:Landroid/view/ViewGroup;

.field protected listView:Landroid/widget/ListView;

.field protected scrollIndicator:Landroid/widget/RelativeLayout;

.field protected scrollIndicatorTextView:Landroid/widget/TextView;

.field protected scrollable:Lcom/andraskindler/quickscroll/Scrollable;

.field textview:[Landroid/widget/TextView;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#e0585858"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->GREY_DARK:I

    const-string v0, "#f0888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->GREY_LIGHT:I

    const-string v0, "#64404040"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->GREY_SCROLLBAR:I

    const-string v0, "#FF33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->BLUE_LIGHT:I

    const-string v0, "#8033B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->BLUE_LIGHT_SEMITRANSPARENT:I

    const-string v0, "#00CDFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->POPUP_TEXT_COLOR:I

    const-string v0, "#00A5C4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andraskindler/quickscroll/QuickScroll;->POPUP_TEXT_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x1a

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "#a0a0a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->TEXT_COLOR:I

    iput v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->ALPHABET_COUNT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isInitialized:Z

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "#a0a0a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->TEXT_COLOR:I

    iput v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->ALPHABET_COUNT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isInitialized:Z

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "#a0a0a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->TEXT_COLOR:I

    iput v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->ALPHABET_COUNT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isInitialized:Z

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected createPin()Landroid/widget/RelativeLayout;
    .locals 7

    const/16 v6, 0x200

    const/16 v5, 0x201

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/andraskindler/quickscroll/Pin;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/andraskindler/quickscroll/Pin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/andraskindler/quickscroll/Pin;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Lcom/andraskindler/quickscroll/Pin;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v2, Lcom/andraskindler/quickscroll/QuickScroll;->GREY_LIGHT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public init(ILandroid/widget/ListView;Landroid/view/ViewGroup;Lcom/andraskindler/quickscroll/Scrollable;I[Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 7

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p7, p0, Lcom/andraskindler/quickscroll/QuickScroll;->activity:Landroid/app/Activity;

    iput p1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    iput-object p2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    iput-object p3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listParent:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->groupPosition:I

    iput-object p6, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/andraskindler/quickscroll/QuickScroll$1;

    invoke-direct {v1, p0, p4}, Lcom/andraskindler/quickscroll/QuickScroll$1;-><init>(Lcom/andraskindler/quickscroll/QuickScroll;Lcom/andraskindler/quickscroll/Scrollable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isScrolling:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/andraskindler/quickscroll/QuickScroll$2;

    invoke-direct {v1, p0}, Lcom/andraskindler/quickscroll/QuickScroll$2;-><init>(Lcom/andraskindler/quickscroll/QuickScroll;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->efsdk_tw_scroll_popup_bg_mtrl:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    sget v3, Lcom/andraskindler/quickscroll/QuickScroll;->POPUP_TEXT_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_selected_alphabet_box_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_selected_alphabet_box_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_selected_alphabet_textsize:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p5, :cond_3

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/andraskindler/quickscroll/QuickScroll;->GREY_SCROLLBAR:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v5, 0xa

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-class v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    :cond_2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    sget v0, Lcom/andraskindler/quickscroll/QuickScroll;->BLUE_LIGHT:I

    sget v4, Lcom/andraskindler/quickscroll/QuickScroll;->BLUE_LIGHT:I

    sget v5, Lcom/andraskindler/quickscroll/QuickScroll;->BLUE_LIGHT_SEMITRANSPARENT:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/andraskindler/quickscroll/QuickScroll;->setHandlebarColor(III)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/high16 v5, 0x42100000    # 36.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/andraskindler/quickscroll/QuickScroll$3;

    invoke-direct {v2, p0}, Lcom/andraskindler/quickscroll/QuickScroll$3;-><init>(Lcom/andraskindler/quickscroll/QuickScroll;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isInitialized:Z

    const-class v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->createPin()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    const/16 v3, 0x201

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v3, 0x19

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected moveHandlebar(F)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/andraskindler/quickscroll/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    int-to-float p1, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/high16 v4, 0x41d00000    # 26.0f

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v0, v2, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    aget-object v0, v3, v0

    sget v3, Lcom/andraskindler/quickscroll/QuickScroll;->POPUP_TEXT_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v0, v5, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_2
    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->isScrolling:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->activity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v0, v6, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_9
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    float-to-int v3, v0

    const/16 v0, 0x1a

    if-lt v3, v0, :cond_b

    move v1, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    if-ne v3, v0, :cond_c

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    sget v4, Lcom/andraskindler/quickscroll/QuickScroll;->POPUP_TEXT_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget v4, p0, Lcom/andraskindler/quickscroll/QuickScroll;->TEXT_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/andraskindler/quickscroll/QuickScroll;->scroll(FZ)I

    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v0, v3, :cond_e

    iget-object v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->textview:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/andraskindler/quickscroll/QuickScroll;->TEXT_COLOR:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v0, v5, :cond_f

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v0, v6, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_10
    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v0, v5, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    move v1, v2

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected scroll(FZ)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit8 v4, v0, 0x41

    move v0, v1

    :goto_0
    iget v5, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    if-ge v0, v5, :cond_4

    aget-object v5, v3, v0

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    :goto_1
    iget v5, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    if-lt v0, v5, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    iget v5, p0, Lcom/andraskindler/quickscroll/QuickScroll;->groupPosition:I

    invoke-interface {v4, v0, v5}, Lcom/andraskindler/quickscroll/Scrollable;->getIndicatorForPosition(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/andraskindler/quickscroll/Scrollable;->selectedAlphabet(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    :goto_2
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    int-to-char v2, v4

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/andraskindler/quickscroll/Scrollable;->selectedAlphabet(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected scroll(F)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/andraskindler/quickscroll/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/QuickScroll;->moveHandlebar(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iput v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->groupPosition:I

    :cond_4
    if-gez v1, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    iget v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->groupPosition:I

    invoke-interface {v2, v0, v3}, Lcom/andraskindler/quickscroll/Scrollable;->getIndicatorForPosition(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollable:Lcom/andraskindler/quickscroll/Scrollable;

    iget v3, p0, Lcom/andraskindler/quickscroll/QuickScroll;->groupPosition:I

    invoke-interface {v2, v0, v3}, Lcom/andraskindler/quickscroll/Scrollable;->getScrollPosition(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    if-lt v1, v0, :cond_7

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public setFadeDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method public setFixedSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEms(I)V

    return-void
.end method

.method public setHandlebarColor(III)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float v2, v3, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v6, [I

    const v3, 0x101009e

    aput v3, v2, v5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->handleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndicatorColor(III)V
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicator:Landroid/widget/RelativeLayout;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/Pin;

    invoke-virtual {v0, p2}, Lcom/andraskindler/quickscroll/Pin;->setColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setPopupColor(IIF)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setTextPadding(IIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/QuickScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, p4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v5, p3

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll;->scrollIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
