.class public Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingLanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    iput p2, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    move-object v2, p2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020010

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x1020020

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-lez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get1()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    return-object v2

    :cond_1
    const v5, 0x7f120cc3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
