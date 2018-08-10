.class Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
.super Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageTextSegmentIterator"
.end annotation


# static fields
.field private static sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_0

    return-object v11

    :cond_0
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt p1, v9, :cond_1

    return-object v11

    :cond_1
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_2

    return-object v11

    :cond_2
    invoke-static {v12, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    sub-int v6, v9, v10

    add-int v5, v1, v6

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    if-ge v5, v4, :cond_3

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    :goto_0
    add-int/lit8 v2, v9, -0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {p0, v7, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v9

    return-object v9

    :cond_3
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    iput-object p1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    return-void
.end method

.method public preceding(I)[I
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    return-object v10

    :cond_0
    if-gtz p1, :cond_1

    return-object v10

    :cond_1
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_2

    return-object v10

    :cond_2
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    sub-int v5, v1, v4

    if-lez v5, :cond_4

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    :goto_0
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_3

    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const/4 v8, -0x1

    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v6

    invoke-virtual {p0, v6, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    return-object v8

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
