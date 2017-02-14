.class public Lcom/samsung/android/settings/widget/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;->onBottomReached()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    return-void
.end method
