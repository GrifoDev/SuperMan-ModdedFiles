.class public final Lcom/android/incallui/help/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


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
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/incallui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v9, p2, v10, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/16 v9, 0xf

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v9, 0x10

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/16 v9, 0x11

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v9, 0x12

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubTextView;->applyStringWithIcon()V

    return-void

    :cond_2
    if-lez v1, :cond_1

    iget-object v9, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private applyStringWithIcon()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/help/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "%s"

    const-string v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    const-string v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "\ufffc"

    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/help/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "HelpHubTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyStringWithIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/incallui/help/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/android/incallui/help/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/incallui/help/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/incallui/help/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    const-string v6, "HelpHubTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dummy image is used. Please apply correct resource. Resource name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p3

    :catch_0
    move-exception v1

    const-string v6, "HelpHubTextView"

    const-string v7, "Cannot find resource"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Lcom/android/incallui/help/HelpHubImageSpan;

    invoke-direct {v4, v0}, Lcom/android/incallui/help/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v6, v4, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    const v6, 0x7f0a0466

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v4, Lcom/android/incallui/help/HelpHubImageSpan;->imageSideMargin:F

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

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
