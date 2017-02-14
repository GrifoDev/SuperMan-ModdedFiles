.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;
.super Landroid/preference/Preference;
.source "AccessibilityDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;,
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    }
.end annotation


# instance fields
.field private ShiftSpinnerFromLeft:I

.field private ShiftSpinnerFromup:F

.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field public mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    const/4 v4, -0x5

    iput v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromLeft:I

    const/high16 v4, -0x3ec00000    # -12.0f

    iput v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromup:F

    new-instance v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-object v4, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static dpToPixel(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getClickLister()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromup:F

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->dpToPixel(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    return-void
.end method
