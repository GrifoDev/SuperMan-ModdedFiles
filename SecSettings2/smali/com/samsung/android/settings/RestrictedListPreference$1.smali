.class Lcom/samsung/android/settings/RestrictedListPreference$1;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/RestrictedListPreference;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/RestrictedListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/RestrictedListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    if-ltz p3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-lt p3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-static {v4, v0}, Lcom/samsung/android/settings/RestrictedListPreference;->-wrap1(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->-wrap2(Lcom/samsung/android/settings/RestrictedListPreference;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    iget v5, v5, Lcom/samsung/android/settings/RestrictedListPreference;->mClickedDialogEntryIndex:I

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/RestrictedListPreference;->-wrap0(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/RestrictedListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/RestrictedListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/RestrictedListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/RestrictedListPreference$1;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v4, p3}, Lcom/samsung/android/settings/RestrictedListPreference;->setClickedDialogEntryIndex(I)V

    goto :goto_0
.end method
