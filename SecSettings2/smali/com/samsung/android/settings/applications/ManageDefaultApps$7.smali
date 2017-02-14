.class Lcom/samsung/android/settings/applications/ManageDefaultApps$7;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-wrap1(Lcom/samsung/android/settings/applications/ManageDefaultApps;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
