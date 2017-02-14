.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "BlueLightFilterRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    const v0, 0x7f0401fa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f040212

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    return-void
.end method
