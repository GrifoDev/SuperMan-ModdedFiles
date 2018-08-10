.class public final Lcom/android/settings/dashboard/SupportFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportFragment$1;
    }
.end annotation


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActivity:Landroid/app/Activity;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContent:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportFragment;)Lcom/android/settings/dashboard/SupportItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/SupportFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->hasInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/SupportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->postConnectivityChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dashboard/SupportFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SupportFragment$1;-><init>(Lcom/android/settings/dashboard/SupportFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private hasInternet()Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postConnectivityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/SupportFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/SupportFragment$2;-><init>(Lcom/android/settings/dashboard/SupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1db

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->setAccounts([Landroid/accounts/Account;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onItemClicked(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/SupportFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/SupportItemAdapter;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/overlay/SupportFeatureProvider;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0d02fe

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    const v1, 0x7f0a0853

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->hasInternet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->setHasInternet(Z)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
