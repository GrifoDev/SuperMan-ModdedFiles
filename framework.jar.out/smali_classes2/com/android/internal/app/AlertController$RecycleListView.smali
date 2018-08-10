.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I

.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    sget-object v1, Lcom/android/internal/R$styleable;->RecycleListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method

.method public setHasDecor(ZZ)V
    .locals 5

    if-eqz p2, :cond_0

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/internal/app/AlertController;->-get12()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    goto :goto_1
.end method
