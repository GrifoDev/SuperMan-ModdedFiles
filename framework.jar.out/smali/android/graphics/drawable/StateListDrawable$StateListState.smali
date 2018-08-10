.class Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    new-array v0, p2, [[I

    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    return-void
.end method

.method hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method indexOfStateSet([I)I
    .locals 4

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method mutate()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_0
    iput-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    new-array v1, v2, [[I

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_2
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    return-object v0
.end method
