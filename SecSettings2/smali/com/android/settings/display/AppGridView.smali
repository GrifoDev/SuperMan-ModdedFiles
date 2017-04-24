.class public Lcom/android/settings/display/AppGridView;
.super Landroid/widget/GridView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppGridView$ActivityEntry;,
        Lcom/android/settings/display/AppGridView$AppsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/display/AppGridView;->setNumColumns(I)V

    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AppGridView;->setColumnWidth(I)V

    new-instance v1, Lcom/android/settings/display/AppGridView$AppsAdapter;

    const v2, 0x7f040258

    const v3, 0x1020014

    const v4, 0x1020007

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v1}, Lcom/android/settings/display/AppGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
