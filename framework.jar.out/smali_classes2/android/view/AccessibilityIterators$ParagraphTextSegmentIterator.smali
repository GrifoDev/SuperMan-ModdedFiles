.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 5

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isStartBoundary(I)Z
    .locals 5

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v5

    :cond_0
    if-lt p1, v2, :cond_1

    return-object v5

    :cond_1
    move v1, p1

    if-gez p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-lt v1, v2, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v2, :cond_5

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method public preceding(I)[I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v5

    :cond_0
    if-gtz p1, :cond_1

    return-object v5

    :cond_1
    move v0, p1

    if-le p1, v2, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-lez v1, :cond_5

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
