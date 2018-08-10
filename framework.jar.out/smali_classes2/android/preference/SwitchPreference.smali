.class public Landroid/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SwitchPreference$ClickListener;,
        Landroid/preference/SwitchPreference$Listener;
    }
.end annotation


# static fields
.field private static final mClickListener:Landroid/preference/SwitchPreference$ClickListener;


# instance fields
.field private final mListener:Landroid/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/preference/SwitchPreference$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference$ClickListener;-><init>(Landroid/preference/SwitchPreference$ClickListener;)V

    sput-object v0, Landroid/preference/SwitchPreference;->mClickListener:Landroid/preference/SwitchPreference$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference$Listener;)V

    iput-object v1, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/widget/Checkable;

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroid/widget/Switch;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v4, v1

    check-cast v4, Landroid/widget/Checkable;

    iget-boolean v5, p0, Landroid/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    instance-of v4, v1, Landroid/widget/Switch;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/widget/Switch;

    iget-object v4, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v3}, Landroid/widget/Switch;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/preference/SwitchPreference;->mClickListener:Landroid/preference/SwitchPreference$ClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    instance-of v4, p0, Landroid/preference/SemSwitchPreferenceScreen;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method
