.class Lcom/samsung/android/settings/notification/BlockNotificationList$9;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    return v3

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0390

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v6, v3, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$9;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v3, v3, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-static {v5, v6, v3, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap5(Lcom/samsung/android/settings/notification/BlockNotificationList;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method
