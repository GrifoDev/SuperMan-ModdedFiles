.class public Lcom/android/contacts/common/format/SpannedTestUtils;
.super Ljava/lang/Object;
.source "SpannedTestUtils.java"


# annotations
.annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotSpanned(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    invoke-static {p1, p0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertPrefixSpan(Ljava/lang/CharSequence;II)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p0, Landroid/text/Spanned;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/contacts/common/format/SpannedTestUtils;->getNumForegroundColorSpansBetween(Landroid/text/Spanned;II)I

    move-result v1

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/format/SpannedTestUtils;->getNumForegroundColorSpansBetween(Landroid/text/Spanned;II)I

    move-result v2

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertEquals(II)V

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/format/SpannedTestUtils;->getNumForegroundColorSpansBetween(Landroid/text/Spanned;II)I

    move-result v1

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    return-void
.end method

.method public static checkHtmlText(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<p dir=ltr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</p>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNextTransition(Landroid/text/SpannableString;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v1, Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static getNumForegroundColorSpansBetween(Landroid/text/Spanned;II)I
    .locals 1

    const-class v0, Landroid/text/style/StyleSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    array-length v0, v0

    return v0
.end method
