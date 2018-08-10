.class public Lcom/android/settings/location/LocationRadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "LocationRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/LocationRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040160

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/location/LocationRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/LocationRadioButtonPreference;->mListener:Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;

    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f0d023a

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationRadioButtonPreference;->mListener:Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationRadioButtonPreference;->mListener:Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationRadioButtonPreference;->mListener:Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;

    return-void
.end method
