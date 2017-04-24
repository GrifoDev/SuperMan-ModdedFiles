.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mIsUserAddProfilesAllowed:I

.field private mIsUserChangeProfilesAllowed:I

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b1810

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const-string/jumbo v3, "[Legacy VPN]"

    const-string/jumbo v4, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ConfigDialogFragment"

    const-string/jumbo v3, "Failed to disconnect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "profile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "editing"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "exists"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vpnconfigdialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b180f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v10, "editing"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v10, "exists"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    :goto_0
    if-nez v3, :cond_7

    const-string/jumbo v10, "ConfigDialogFragment"

    const-string/jumbo v11, "Dialog is null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    return-void

    :cond_1
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_3
    const/4 v10, -0x3

    move/from16 v0, p2

    if-ne v0, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_5
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000c5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    iget v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    const/4 v1, 0x1

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    iget v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    if-nez v10, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v6, :cond_a

    iget v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_a

    return-void

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1000be

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_d

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    invoke-direct {p0, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->isVpnAlwaysOn()Z

    move-result v10

    invoke-direct {p0, v10, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    return-void

    :cond_c
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v10, "ConfigDialogFragment"

    const-string/jumbo v11, "Failed to connect"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_d
    const/4 v10, -0x3

    move/from16 v0, p2

    if-ne v0, v10, :cond_b

    invoke-direct {p0, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigDialog;->dismissSpinnerPopup()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v0, "profile"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    const-string/jumbo v0, "editing"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v0, "exists"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v0, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    return-object v0
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string/jumbo v6, "isUserAddProfilesAllowed"

    invoke-static {v4, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string/jumbo v6, "isUserChangeProfilesAllowed"

    invoke-static {v4, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v6, "isVpnAllowed"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "ConfigDialogFragment"

    const-string/jumbo v5, "Restriction Policy applied"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v4, :cond_1

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-eqz v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method
