.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/OptionsMenuFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings/UserCredentialsSettings$Credential;,
        Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11d

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f040303

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f1106d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f110207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f1106d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-static {p0, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    return-void
.end method

.method protected refreshItems()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
