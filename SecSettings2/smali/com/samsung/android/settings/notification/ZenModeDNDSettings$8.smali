.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateZenMode(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b09c5

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz v0, :cond_3

    const/16 v1, 0x3e8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b09c6

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
