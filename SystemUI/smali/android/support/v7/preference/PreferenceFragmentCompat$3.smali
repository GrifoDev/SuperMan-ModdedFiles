.class Landroid/support/v7/preference/PreferenceFragmentCompat$3;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-interface {v2, v3}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1
    return-void

    :cond_2
    move-object v2, v0

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_1
.end method
