.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "CustomizerPagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizerTilePage"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxRows(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    return-void
.end method

.method public updateResources()Z
    .locals 2

    const-string/jumbo v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    move-result v0

    return v0
.end method
