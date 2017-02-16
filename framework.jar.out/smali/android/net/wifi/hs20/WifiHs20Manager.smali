.class public Landroid/net/wifi/hs20/WifiHs20Manager;
.super Ljava/lang/Object;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;,
        Landroid/net/wifi/hs20/WifiHs20Manager$Channel;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;,
        Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;,
        Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
    }
.end annotation


# static fields
.field public static final ACTION_HS20_PROVISIONING_STATE_CHANGE:Ljava/lang/String; = "adroid.net.wifi.hs20.provisioning_state"

.field public static final ACTION_SEC_CLOSE_BROWSER:Ljava/lang/String; = "android.net.wifi.HS20_SEC_CLOSE_BROWSER"

.field public static final ACTION_SEC_LAUNCH_OPERATOR_URL:Ljava/lang/String; = "android.net.wifi.HS20_SEC_LAUNCH_OPERTOR_URL"

.field public static final ACTION_SEC_LAUNCH_SP_URL:Ljava/lang/String; = "android.net.wifi.HS20_SEC_LAUNCH_SP_URL"

.field public static final B64:I = 0x6

.field private static final BASE:I = 0x28000

.field public static final BINARY:I = 0x4

.field public static final BOOL:I = 0x2

.field public static final CHAR:I = 0x1

.field public static final DM_ADD_ACTION:I = 0x3

.field public static final DM_DELETE_ACTION:I = 0x6

.field public static final DM_END_ACTION:I = 0x2

.field public static final DM_EXEC_ACTION:I = 0x7

.field public static final DM_GET_ACTION:I = 0x5

.field public static final DM_REPLACE_ACTION:I = 0x4

.field public static final DM_START_ACTION:I = 0x1

.field public static final EAP_TYPE_FOUND:Ljava/lang/String; = "android.net.wifi.hs20.EAP_TYPE_FOUND"

.field public static final EXTRA_HS20_STATE:Ljava/lang/String; = "hs20_state"

.field public static final HS20_ANQP_ALL:I = -0x1

.field public static final HS20_ANQP_ALL_EX_OSU:I = 0x1

.field public static final HS20_ANQP_ANONYMOUS_NAI:I = 0x100

.field public static final HS20_ANQP_CAPABILITY:I = 0x2

.field public static final HS20_ANQP_CONN_CAP:I = 0x10

.field public static final HS20_ANQP_FRIENLDLY_NAME:I = 0x4

.field public static final HS20_ANQP_ICON_REQUEST:I = 0x200

.field public static final HS20_ANQP_NAI_HOME:I = 0x20

.field public static final HS20_ANQP_OPERATING_CLASS:I = 0x40

.field public static final HS20_ANQP_OSU_LIST:I = 0x80

.field public static final HS20_ANQP_WAN_MATRIX:I = 0x8

.field public static final HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

.field public static final HS20_ICON_STORE_PATH:Ljava/lang/String; = "/data/hs20/icons/"

.field public static final HS20_OSU_SELECTED:Ljava/lang/String; = "android.net.wifi.HS20_OSU_SELECTED"

.field public static final HS20_OSU_STATE_UNKNOWN:I = 0x270f

.field public static final HS20_PROVISIONIG_FRIENDLY_NAME:Ljava/lang/String; = "friendly_name"

.field public static final HS20_PROVISIONIG_ICON_PATH:Ljava/lang/String; = "icon_path"

.field public static final HS20_PROVISIONIG_STATE:Ljava/lang/String; = "hs20_state"

.field public static final HS20_REMEDIATION_REQUEST_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_REMEDIATION_REQUEST"

.field public static final HS20_STATE_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_STATE_CHANGE"

.field public static final HS20_STATE_DISABLED:I = 0x0

.field public static final HS20_STATE_ENABLED:I = 0x1

.field public static final HS20_STATE_POLICY_UPDATE_FAILED:I = 0x2331

.field public static final HS20_STATE_POLICY_UPDATE_STARTED:I = 0x232f

.field public static final HS20_STATE_POLICY_UPDATE_SUCCESSFUL:I = 0x2330

.field public static final HS20_STATE_REMEDIATION_FAILED:I = 0x232e

.field public static final HS20_STATE_REMEDIATION_STARTED:I = 0x232c

.field public static final HS20_STATE_REMEDIATION_SUCCESSFUL:I = 0x232d

.field public static final HS20_STATE_SUBSCRIPTION_FAILED:I = 0x232b

.field public static final HS20_STATE_SUBSCRIPTION_STARTED:I = 0x2329

.field public static final HS20_STATE_SUBSCRIPTION_SUCCESSFUL:I = 0x232a

.field public static final HS20_STATE_UNKNOWN:I = 0x2

.field public static final HTTP_GET_CONTENT_TYPE_ERROR:I = 0x3

.field public static final HTTP_GET_RESPONSE_ERROR:I = 0x5

.field public static final INSTALL_CRED:Ljava/lang/String; = "android.net.wifi.hs20.INSTALL_CRED"

.field public static final INSTALL_CRED_BROWSER:Ljava/lang/String; = "android.net.wifi.hs20.INSTALL_CRED_BROWSER"

.field public static final INTEGER:I = 0x0

.field public static final INVALID_CRED_ID:I = -0x1

.field public static final NODE:I = 0x5

.field public static final REQUEST_ANQP_INFO:I = 0x28001

.field public static final REQUEST_ANQP_INFO_FAILED:I = 0x28002

.field public static final REQUEST_ANQP_INFO_SUCCEEDED:I = 0x28003

.field public static final REQUEST_OSU_ICON:I = 0x28004

.field public static final REQUEST_OSU_ICON_FAILED:I = 0x28005

.field public static final REQUEST_OSU_ICON_SUCCEEDED:I = 0x28006

.field public static final SEC_COMMAND_CLEAR_HS20:I = 0x3e9

.field public static final SEC_COMMAND_ID_HS20_FETCH_OSU:I = 0x3e8

.field public static final SEC_COMMAND_ID_RELOAD_SIM_STATE:I = 0xc3

.field public static final START_OSU:I = 0x28007

.field public static final START_OSU_BROWSER:I = 0x28008

.field public static final START_OSU_FAILED:I = 0x28009

.field public static final START_OSU_SUCCEEDED:I = 0x2800a

.field private static final TAG:Ljava/lang/String; = "Hs20Manager"

.field public static final TEST_CLEAR_DB:Ljava/lang/String; = "android.net.wifi.hs20.TEST_CLEAR_DB"

.field public static final TEST_CONNECT_WITH_STATIC_IP:Ljava/lang/String; = "android.net.wifi.hs20.TEST_CONNECT_WITH_STATIC_IP"

.field public static final TEST_GEN_CRED_CONF_FILE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_GEN_CRED_CONF_FILE"

.field public static final TEST_START_OSU_PROCESS:Ljava/lang/String; = "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

.field public static final TEST_START_OSU_PROCESS_NOSIGMA:Ljava/lang/String; = "android.net.wifi.hs20.TEST_START_OSU_PROCESS_NOSIGMA"

.field public static final TEST_TRIGGER_INSTALL_FILE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

.field public static final TEST_TRIGGER_POLICY_UPDATE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/hs20/IWifiHs20Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hs20/IWifiHs20Manager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/hs20/IWifiHs20Manager;

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mContext:Landroid/content/Context;

    .line 537
    iput-object p2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    .line 535
    return-void
.end method


# virtual methods
.method public addDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 7
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    const/4 v6, 0x0

    .line 770
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 771
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "Action"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 772
    const-string/jumbo v3, "Uri"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v3, "Format"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 774
    iget v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 775
    .local v2, "format":I
    if-nez v2, :cond_1

    .line 776
    const-string/jumbo v3, "data"

    iget-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 786
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v3, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v3

    return v3

    .line 777
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 778
    const-string/jumbo v3, "data"

    iget-boolean v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 787
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :catch_0
    move-exception v1

    .line 788
    .local v1, "e":Landroid/os/RemoteException;
    return v6

    .line 779
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 780
    const-string/jumbo v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string/jumbo v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 782
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 783
    const-string/jumbo v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 784
    const-string/jumbo v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public cancelSubscription()V
    .locals 2

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->cancelSubscription()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 832
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Action"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 834
    const-string/jumbo v2, "Uri"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v2, "Format"

    iget v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 836
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 837
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public deleteSubscription(I)Z
    .locals 2
    .param p1, "hsId"    # I

    .prologue
    .line 688
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->deleteSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public enableSubscription(IZ)Z
    .locals 2
    .param p1, "hsId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/hs20/IWifiHs20Manager;->enableSubscription(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public endSession(I)Z
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 873
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Action"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 875
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 876
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 877
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public exec(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "param"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 853
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Action"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string/jumbo v2, "Command"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string/jumbo v2, "execData"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 858
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public getCertID(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getCertID(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getCredentials(IILjava/lang/String;)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 5
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "subscriptionType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 908
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v1}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .line 910
    .local v1, "dmData":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v3, p1, p2, p3}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getCredentials(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 912
    .local v0, "credentialDetails":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 913
    return-object v4

    .line 914
    :cond_0
    const-string/jumbo v3, "Username"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    .line 915
    const-string/jumbo v3, "Password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    return-object v1

    .line 917
    .end local v0    # "credentialDetails":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 918
    .local v2, "e":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 10
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    const/4 v7, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 719
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 720
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "Action"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string/jumbo v4, "Uri"

    iget-object v5, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v4, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v4, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getDMData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 723
    .local v1, "dmData":Landroid/os/Bundle;
    const/4 v3, -0x1

    .line 725
    .local v3, "format":I
    if-nez v1, :cond_0

    .line 726
    return v8

    .line 727
    :cond_0
    const-string/jumbo v4, "Format"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 728
    const-string/jumbo v4, "Hs20Manager"

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Length of the data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dataLen"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-nez v3, :cond_2

    .line 731
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: intData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .line 733
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 734
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: intData11: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_1
    :goto_0
    return v9

    .line 735
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 736
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    .line 737
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: booleanData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto :goto_0

    .line 756
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dmData":Landroid/os/Bundle;
    .end local v3    # "format":I
    :catch_0
    move-exception v2

    .line 757
    .local v2, "e":Landroid/os/RemoteException;
    return v8

    .line 739
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "dmData":Landroid/os/Bundle;
    .restart local v3    # "format":I
    :cond_3
    if-ne v3, v9, :cond_4

    .line 740
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: charData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 742
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: charData11: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string/jumbo v4, "dataLen"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    .line 744
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto/16 :goto_0

    .line 745
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 746
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: byteData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    .line 748
    const-string/jumbo v4, "Hs20Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDMData: byteData11: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string/jumbo v4, "dataLen"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    .line 750
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto/16 :goto_0

    .line 751
    :cond_5
    if-ne v3, v7, :cond_1

    .line 752
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 753
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public getFormatType(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 891
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getFormatType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getKeyPass()[B
    .locals 2

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getKeyPass()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSubscribedSpList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getSubscribedSpList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
    .locals 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    .prologue
    const/4 v4, 0x0

    .line 552
    invoke-virtual {p0}, Landroid/net/wifi/hs20/WifiHs20Manager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 553
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    .line 554
    return-object v4

    .line 556
    :cond_0
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)V

    .line 557
    .local v0, "c":Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
    invoke-static {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-get0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-static {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-get2(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v2

    if-nez v2, :cond_1

    .line 558
    return-object v0

    .line 560
    :cond_1
    return-object v4
.end method

.method public isSubscrptionInProgress()Z
    .locals 2

    .prologue
    .line 603
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->isSubscrptionInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 606
    const/4 v1, 0x0

    return v1
.end method

.method public modifyPasspointCred(Ljava/lang/String;)I
    .locals 3
    .param p1, "credInfo"    # Ljava/lang/String;

    .prologue
    .line 962
    :try_start_0
    const-string/jumbo v1, "modifyPasspointCred"

    const-string/jumbo v2, "Load the credentials"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->modifyPasspointCred(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public replaceDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 7
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 801
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 802
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "Action"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 803
    const-string/jumbo v3, "Uri"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string/jumbo v3, "Format"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 805
    iget v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 806
    .local v2, "format":I
    if-nez v2, :cond_1

    .line 807
    const-string/jumbo v3, "data"

    iget-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 817
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v3, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v3

    return v3

    .line 808
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 809
    const-string/jumbo v3, "data"

    iget-boolean v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 818
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Landroid/os/RemoteException;
    return v6

    .line 810
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 811
    const-string/jumbo v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 813
    :cond_3
    if-ne v2, v5, :cond_0

    .line 814
    const-string/jumbo v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 815
    const-string/jumbo v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 2
    .param p1, "selectedOsuProvider"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startPolicyUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->startPolicyUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startSession()Z
    .locals 4

    .prologue
    .line 702
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 704
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 705
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public updateCredPriorities(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 658
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->updateCredPriorities(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
