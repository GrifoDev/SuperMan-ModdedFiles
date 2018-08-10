.class public Lcom/android/settings/applications/LayoutPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "LayoutPreference.java"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDescendantFocusability:I

.field private mIsRelativeLinkView:Z

.field mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v5, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "LayoutPreference requires a layout to be defined"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    invoke-direct {p0, p2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    invoke-direct {p0, p2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    iput p3, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$Lambda$0rbR-UEM7DmFQah72e9J6K2XPQc$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    invoke-direct {p0, p2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    iput-boolean p3, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0d016e

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LayoutPreference;->setLayoutResource(I)V

    const v1, 0x7f0a0073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LayoutPreference;->setShouldDisableView(Z)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_applications_LayoutPreference_1241(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/settings/applications/LayoutPreference;->mIsRelativeLinkView:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget v3, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/settings/applications/LayoutPreference;->mDescendantFocusability:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->isSelectable()Z

    move-result v2

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method
