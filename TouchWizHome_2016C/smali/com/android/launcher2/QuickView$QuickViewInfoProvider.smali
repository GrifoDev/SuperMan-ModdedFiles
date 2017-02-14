.class public interface abstract Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
.super Ljava/lang/Object;
.source "QuickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuickViewInfoProvider"
.end annotation


# virtual methods
.method public abstract getCurrentPage()I
.end method

.method public abstract getNumPages()I
.end method

.method public abstract getPage(I)Landroid/view/View;
.end method

.method public abstract getPageHorizontalOffset()I
.end method

.method public abstract movePage(II)V
.end method

.method public abstract onQuickViewCloseAnimationCompleted()V
.end method

.method public abstract onQuickViewCloseAnimationStarted()V
.end method

.method public abstract onQuickViewDragEnd()V
.end method

.method public abstract onQuickViewDragStart()V
.end method

.method public abstract saveCurrentPageOrder()V
.end method

.method public abstract setPage(I)V
.end method
