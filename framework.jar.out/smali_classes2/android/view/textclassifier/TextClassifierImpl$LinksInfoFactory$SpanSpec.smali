.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpanSpec"
.end annotation


# instance fields
.field private final mEnd:I

.field private final mSpan:Landroid/text/style/ClickableSpan;

.field private final mStart:I


# direct methods
.method static synthetic -get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mEnd:I

    return v0
.end method

.method static synthetic -get1(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)Landroid/text/style/ClickableSpan;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mSpan:Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mStart:I

    return v0
.end method

.method constructor <init>(IILandroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mStart:I

    iput p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mEnd:I

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method
