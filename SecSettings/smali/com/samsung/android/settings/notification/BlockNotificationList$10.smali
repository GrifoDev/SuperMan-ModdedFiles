.class Lcom/samsung/android/settings/notification/BlockNotificationList$10;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setEnableBadgeAppIcon(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap6(Lcom/samsung/android/settings/notification/BlockNotificationList;Z)V

    const/4 v1, 0x1

    return v1
.end method
