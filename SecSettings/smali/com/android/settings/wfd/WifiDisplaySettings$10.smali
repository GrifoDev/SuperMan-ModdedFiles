.class Lcom/android/settings/wfd/WifiDisplaySettings$10;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get4(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set3(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get4(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;II)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
