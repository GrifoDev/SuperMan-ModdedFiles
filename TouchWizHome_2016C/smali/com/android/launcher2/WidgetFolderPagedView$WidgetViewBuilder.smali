.class public interface abstract Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;
.super Ljava/lang/Object;
.source "WidgetFolderPagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolderPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WidgetViewBuilder"
.end annotation


# virtual methods
.method public abstract buildView(Lcom/android/launcher2/AvailableWidget;)Landroid/view/View;
.end method

.method public abstract getCellGapX()I
.end method

.method public abstract getCellGapY()I
.end method

.method public abstract onPageAdded(Ljava/util/ArrayList;Landroid/widget/GridLayout;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Landroid/widget/GridLayout;",
            "I)V"
        }
    .end annotation
.end method
