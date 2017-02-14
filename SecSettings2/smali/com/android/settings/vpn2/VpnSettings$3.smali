.class Lcom/android/settings/vpn2/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;

.field final synthetic val$alwaysOnAppVpnInfos:Ljava/util/Set;

.field final synthetic val$connectedAppVpns:Ljava/util/Set;

.field final synthetic val$connectedLegacyVpns:Ljava/util/Map;

.field final synthetic val$lockdownVpnKey:Ljava/lang/String;

.field final synthetic val$vpnApps:Ljava/util/List;

.field final synthetic val$vpnProfiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$vpnProfiles:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$connectedLegacyVpns:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$lockdownVpnKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$vpnApps:Ljava/util/List;

    iput-object p6, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$connectedAppVpns:Ljava/util/Set;

    iput-object p7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v13, 0x0

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v12}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$vpnProfiles:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/net/VpnProfile;

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v12, v8}, Lcom/android/settings/vpn2/VpnSettings;->-wrap2(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v5

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$connectedLegacyVpns:Ljava/util/Map;

    iget-object v14, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$connectedLegacyVpns:Ljava/util/Map;

    iget-object v14, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/net/LegacyVpnInfo;

    iget v12, v12, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v5, v12}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    :goto_1
    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$lockdownVpnKey:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$lockdownVpnKey:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    :goto_2
    invoke-virtual {v5, v12}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setAlwaysOn(Z)V

    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v12, Lcom/android/settings/vpn2/LegacyVpnPreference;->STATE_NONE:I

    invoke-virtual {v5, v12}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    goto :goto_1

    :cond_2
    move v12, v13

    goto :goto_2

    :cond_3
    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$vpnApps:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppVpnInfo;

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v12, v0}, Lcom/android/settings/vpn2/VpnSettings;->-wrap1(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v4

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$connectedAppVpns:Ljava/util/Set;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    :goto_4
    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->val$alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v4, v12}, Lcom/android/settings/vpn2/AppPreference;->setAlwaysOn(Z)V

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget v12, Lcom/android/settings/vpn2/AppPreference;->STATE_DISCONNECTED:I

    invoke-virtual {v4, v12}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    goto :goto_4

    :cond_5
    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v12}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v12}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v12}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    :goto_5
    if-ltz v2, :cond_7

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v11, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_7
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_8
    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v12}, Lcom/android/settings/vpn2/VpnSettings;->onDataSetChanged()V

    return-void
.end method
