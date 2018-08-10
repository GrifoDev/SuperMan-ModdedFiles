.class public Landroid/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadioGroup$CheckedStateTracker;,
        Landroid/widget/RadioGroup$LayoutParams;,
        Landroid/widget/RadioGroup$OnCheckedChangeListener;,
        Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInitialCheckedId:I

.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static synthetic -get0(Landroid/widget/RadioGroup;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/RadioGroup;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/RadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/RadioGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/RadioGroup;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    iput v1, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    iput-boolean v6, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    iput v5, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getImportantForAutofill()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v7}, Landroid/widget/RadioGroup;->setImportantForAutofill(I)V

    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->RadioGroup:[I

    const v4, 0x101007e

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v5, :cond_1

    iput v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    iput v2, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    :cond_1
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$CheckedStateTracker;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 3

    iput p1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    iget-object v1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-interface {v1, p0, v2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/RadioGroup;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_0
    iput-boolean v3, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/widget/RadioGroup;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " could not be autofilled into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RadioGroup.autoFill(): no child with index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public check(I)V
    .locals 3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    iget v1, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->-set0(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
