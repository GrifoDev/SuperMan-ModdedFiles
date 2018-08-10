.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    return v9

    :cond_0
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    add-int v4, v1, v0

    if-lez p1, :cond_1

    if-lt v4, v3, :cond_3

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_3

    return v9

    :cond_1
    if-gez p1, :cond_2

    if-gtz v1, :cond_3

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_3

    return v9

    :cond_2
    return v9

    :cond_3
    const/4 v7, 0x1

    return v7
.end method

.method public scrollTargetBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
