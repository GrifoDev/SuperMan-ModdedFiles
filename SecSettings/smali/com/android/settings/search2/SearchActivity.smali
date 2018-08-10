.class public Lcom/android/settings/search2/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0a04ff

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d028d

    invoke-virtual {p0, v2}, Lcom/android/settings/search2/SearchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lcom/android/settings/search2/SearchFragment;

    invoke-direct {v3}, Lcom/android/settings/search2/SearchFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
