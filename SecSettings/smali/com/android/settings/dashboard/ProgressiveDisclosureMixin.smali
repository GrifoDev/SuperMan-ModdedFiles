.class public Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;
.super Ljava/lang/Object;
.source "ProgressiveDisclosureMixin.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;


# instance fields
.field private final mCollapsedPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mTileLimit:I

.field private mUserExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    iput-object p1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    new-instance v0, Lcom/android/settings/dashboard/ExpandPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/ExpandPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/ExpandPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iput-boolean p3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x2

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method addToCollapsedList(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->updateExpandButtonSummary()V

    return-void
.end method

.method public collapse(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ProgressiveDisclosure"

    const-string/jumbo v4, "collapsed list should ALWAYS BE EMPTY before collapsing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_0
    iget v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    if-lt v0, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    instance-of v4, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ProgressiveDisclosure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find preference with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method getCollapsedPrefs()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "state_user_expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    instance-of v4, p1, Lcom/android/settings/dashboard/ExpandPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    instance-of v4, v4, Lcom/android/settings/core/instrumentation/Instrumentable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    check-cast v4, Lcom/android/settings/core/instrumentation/Instrumentable;

    invoke-interface {v4}, Lcom/android/settings/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    const/16 v6, 0x342

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->actionWithSource(Landroid/content/Context;II)V

    :cond_1
    const/4 v4, 0x0

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "state_user_expanded"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->updateExpandButtonSummary()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setTileLimit(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    return-void
.end method

.method public shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    iget v2, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method updateExpandButtonSummary()V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    if-ne v2, v8, :cond_1

    iget-object v5, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v1, v5, v8

    const v6, 0x7f120e6c

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
