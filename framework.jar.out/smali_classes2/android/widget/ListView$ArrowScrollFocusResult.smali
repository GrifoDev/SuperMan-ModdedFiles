.class Landroid/widget/ListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView$ArrowScrollFocusResult;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 3149
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 3145
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 3140
    iput p1, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3141
    iput p2, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3139
    return-void
.end method
