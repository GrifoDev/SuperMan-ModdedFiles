.class public Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SnsRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;

    const v0, 0x7f0d02e4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f0d023a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_1
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;

    return-void
.end method
