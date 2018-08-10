.class public Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 2

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    return-object p0
.end method
