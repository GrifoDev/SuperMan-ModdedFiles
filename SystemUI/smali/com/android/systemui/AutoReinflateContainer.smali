.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AutoReinflateContainer$InflateListener;
    }
.end annotation


# instance fields
.field private mDensity:I

.field private final mInflateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/AutoReinflateContainer$InflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:I

.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    sget-object v1, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AutoReinflateContainer must contain a layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    return-void
.end method


# virtual methods
.method protected inflateLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected inflateLayoutImpl()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v2, 0x0

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    if-eq v1, v3, :cond_1

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    :cond_2
    return-void
.end method
