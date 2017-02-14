.class public interface abstract Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;
.super Ljava/lang/Object;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemLongPressMultiSelectionListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onLongPressMultiSelectionEnded(II)V
.end method

.method public abstract onLongPressMultiSelectionStarted(II)V
.end method
