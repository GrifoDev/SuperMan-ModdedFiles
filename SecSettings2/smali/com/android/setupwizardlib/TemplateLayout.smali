.class public Lcom/android/setupwizardlib/TemplateLayout;
.super Landroid/widget/FrameLayout;
.source "TemplateLayout.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v1, v1, p2, v0}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0, v0, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private inflateTemplate(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->addViewInternal(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Container cannot be null in TemplateLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onTemplateInflated()V

    return-void
.end method

.method private init(IILandroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout:[I

    invoke-virtual {v1, p3, v2, p4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p1, :cond_0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    :cond_0
    if-nez p2, :cond_1

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout_suwContainer:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;->inflateTemplate(II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContainerId()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getContainerId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "android:layout not specified for TemplateLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onTemplateInflated()V
    .locals 0

    return-void
.end method
