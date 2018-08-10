.class Lcom/android/settings/datausage/CellDataPreference$6;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/CellDataPreference;->-get0(Lcom/android/settings/datausage/CellDataPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iget v1, v1, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->-wrap1(Lcom/android/settings/datausage/CellDataPreference;Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iget v1, v1, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->-wrap0(Lcom/android/settings/datausage/CellDataPreference;I)V

    return-void
.end method
