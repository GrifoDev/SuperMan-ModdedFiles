.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/LinksInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinksInfoImpl"
.end annotation


# instance fields
.field private final mOriginalText:Ljava/lang/CharSequence;

.field private final mSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get1(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v7

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-interface {v3, v4, v7, v8, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    return v6
.end method
