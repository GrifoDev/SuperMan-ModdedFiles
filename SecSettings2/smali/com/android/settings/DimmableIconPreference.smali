.class public Lcom/android/settings/DimmableIconPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "DimmableIconPreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method private dimIcon(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DimmableIconPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/DimmableIconPreference;->dimIcon(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
