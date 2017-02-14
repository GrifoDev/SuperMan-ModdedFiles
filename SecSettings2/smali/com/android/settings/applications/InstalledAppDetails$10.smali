.class Lcom/android/settings/applications/InstalledAppDetails$10;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get1(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get1(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get1(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    return v2
.end method
