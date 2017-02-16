.class Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
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

.field final synthetic this$1:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

.field totalCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
    .param p2, "indexCount"    # I
    .param p3, "dotCount"    # I
    .param p4, "totalCount"    # I
    .param p5, "height"    # F
    .param p6, "separatorHeight"    # F

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->this$1:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1387
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1388
    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1389
    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1390
    iput p6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1385
    return-void
.end method
