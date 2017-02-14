.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v5
.end method
