.class Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroid/support/v7/widget/RecyclerView;

.field private final mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    iput-object p4, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    return-void
.end method

.method private scrollToPreference()V
    .locals 3

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method
