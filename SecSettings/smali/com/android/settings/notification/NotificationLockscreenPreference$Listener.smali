.class Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;
.super Ljava/lang/Object;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationLockscreenPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private final mInner:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-set0(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v2, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v4}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-get1(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-wrap0(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102025c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-get0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    return-void
.end method
