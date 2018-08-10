.class public Lcom/samsung/android/settings/SecRadioButtonPreference;
.super Landroid/support/v7/preference/SecCheckBoxPreference;
.source "SecRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/SecCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f0d023a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    return-void
.end method
