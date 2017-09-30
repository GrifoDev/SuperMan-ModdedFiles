.class public final Lcom/android/incallui/help/HelpHubTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final ICON_POINTER_PS:Ljava/lang/String; = "%s"

.field private static final ICON_POINTER_PS_EXCHANGE:Ljava/lang/String; = "\ufffc"

.field private static final ICON_POINTER_PS_NUM:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HelpHubTextView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%1$s"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%2$s"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%3$s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%4$s"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%5$s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/help/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v0, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubTextView;->applyStringWithIcon()V

    return-void

    :cond_2
    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private applyStringWithIcon()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/help/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "%s"

    const-string v3, "\ufffc"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_4

    const-string v0, "\ufffc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "\ufffc"

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v3

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "HelpHubTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyStringWithIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v3

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    const-string v1, "HelpHubTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dummy image is used. Please apply correct resource. Resource name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p3

    :catch_0
    move-exception v0

    const-string v1, "HelpHubTextView"

    const-string v2, "Cannot find resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Lcom/android/incallui/help/HelpHubImageSpan;

    invoke-direct {v2, v1}, Lcom/android/incallui/help/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v2, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    const v1, 0x7f0a04a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v2, Lcom/android/incallui/help/HelpHubImageSpan;->imageSideMargin:F

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v3, 0x11

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public changeText(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/help/HelpHubTextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubTextView;->applyStringWithIcon()V

    return-void
.end method

.method public changeText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/help/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubTextView;->applyStringWithIcon()V

    return-void
.end method
