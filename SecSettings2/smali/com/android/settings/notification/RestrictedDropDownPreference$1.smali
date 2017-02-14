.class Lcom/android/settings/notification/RestrictedDropDownPreference$1;
.super Ljava/lang/Object;
.source "RestrictedDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RestrictedDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-get1(Lcom/android/settings/notification/RestrictedDropDownPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-set0(Lcom/android/settings/notification/RestrictedDropDownPreference;Z)Z

    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge p3, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap3(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-get0(Lcom/android/settings/notification/RestrictedDropDownPreference;)Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget-object v4, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/RestrictedDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap0(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$1;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
