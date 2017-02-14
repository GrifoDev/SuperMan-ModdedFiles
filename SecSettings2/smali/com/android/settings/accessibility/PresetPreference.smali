.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/PresetPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f040113

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    const v0, 0x7f040221

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setListItemLayoutResource(I)V

    const-string/jumbo v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 7

    const v5, 0x7f11019c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f1102d0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getValueAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v5, v0, v1, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/settings/accessibility/PresetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    const v5, 0x7f1101d3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
