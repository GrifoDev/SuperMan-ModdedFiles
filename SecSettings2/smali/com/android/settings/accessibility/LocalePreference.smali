.class public Lcom/android/settings/accessibility/LocalePreference;
.super Landroid/preference/ListPreference;
.source "LocalePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [Ljava/lang/CharSequence;

    add-int/lit8 v6, v2, 0x1

    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b161c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    const-string/jumbo v6, ""

    aput-object v6, v1, v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/LocalePreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/LocalePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/LocalePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/LocalePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/LocalePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10025a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
