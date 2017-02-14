.class Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voice/VoiceInputListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/settings/voice/VoiceInputListPreference;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    iput p4, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f04003c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f110154

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->isItemEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->isItemEnabled(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isItemEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-static {v0}, Lcom/android/settings/voice/VoiceInputListPreference;->-get0(Lcom/android/settings/voice/VoiceInputListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
