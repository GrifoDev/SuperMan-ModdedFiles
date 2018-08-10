.class public Lcom/android/settings/search2/SavedQueryViewHolder;
.super Lcom/android/settings/search2/SearchViewHolder;
.source "SavedQueryViewHolder.java"


# instance fields
.field public final removeButton:Landroid/view/View;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/search2/SearchViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/search2/SavedQueryViewHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SavedQueryViewHolder;->removeButton:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$-com_android_settings_search2_SavedQueryViewHolder_1211(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/search2/SearchFragment;->onSavedQueryClicked(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$-com_android_settings_search2_SavedQueryViewHolder_1301(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/search2/SearchFragment;->onRemoveSavedQueryClicked(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/settings/search2/SearchFragment;Lcom/android/settings/search2/SearchResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryViewHolder;->titleView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/search2/-$Lambda$A_Fhki7mCCs5NhOhZdC37Ve-U3E;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/search2/-$Lambda$A_Fhki7mCCs5NhOhZdC37Ve-U3E;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryViewHolder;->removeButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/search2/-$Lambda$A_Fhki7mCCs5NhOhZdC37Ve-U3E$1;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/search2/-$Lambda$A_Fhki7mCCs5NhOhZdC37Ve-U3E$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
