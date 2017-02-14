.class public Lcom/android/setupwizardlib/SetupWizardListLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardListLayout.java"


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInset:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardListLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardListLayout_suwDividerInset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->setDividerInset(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateDivider()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->isLayoutDirectionResolved()Z

    move-result v7

    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x102000a

    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_list_template:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->updateDivider()V

    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public setDividerInset(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mDividerInset:I

    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->updateDivider()V

    return-void
.end method
