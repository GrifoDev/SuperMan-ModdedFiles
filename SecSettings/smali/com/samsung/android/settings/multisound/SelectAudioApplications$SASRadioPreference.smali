.class public Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;
.super Lcom/samsung/android/settings/multisound/SASButtonPreference;
.source "SelectAudioApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SASRadioPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a08fc

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
