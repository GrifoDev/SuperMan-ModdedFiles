.class Lcom/android/settings/applications/InstalledAppDetails$13;
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

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get2(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultSmsPreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get2(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultSmsPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get2(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultSmsPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "smsto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$13;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method
