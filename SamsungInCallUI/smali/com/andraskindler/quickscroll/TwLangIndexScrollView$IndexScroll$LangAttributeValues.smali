.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LangAttributeValues"
.end annotation


# instance fields
.field alphabetArray:[Ljava/lang/String;

.field dotCount:I

.field height:F

.field indexCount:I

.field separatorHeight:F

.field final synthetic this$1:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

.field totalCount:I


# direct methods
.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;IIIFF)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->this$1:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iput p5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    return-void
.end method
