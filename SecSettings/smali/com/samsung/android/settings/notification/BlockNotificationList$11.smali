.class Lcom/samsung/android/settings/notification/BlockNotificationList$11;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

.field final synthetic val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v3, v3, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v4, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-static {v1, v3, v4, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap5(Lcom/samsung/android/settings/notification/BlockNotificationList;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0392

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$11;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
