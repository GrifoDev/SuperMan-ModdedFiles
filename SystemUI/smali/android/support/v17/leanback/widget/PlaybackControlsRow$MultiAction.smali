.class public abstract Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiAction"
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mLabels:[Ljava/lang/String;

.field private mLabels2:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getActionCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    return v0
.end method

.method public nextIndex()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->getActionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setLabel1(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setLabel2(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method

.method public setSecondaryLabels([Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method
