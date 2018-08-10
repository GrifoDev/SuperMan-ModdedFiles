.class public final Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    }
.end annotation


# static fields
.field private static final NODE_AAA_SERVER_TRUST_ROOT:Ljava/lang/String; = "AAAServerTrustRoot"

.field private static final NODE_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final NODE_CERTIFICATE_TYPE:Ljava/lang/String; = "CertificateType"

.field private static final NODE_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final NODE_CERT_URL:Ljava/lang/String; = "CertURL"

.field private static final NODE_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final NODE_COUNTRY:Ljava/lang/String; = "Country"

.field private static final NODE_CREATION_DATE:Ljava/lang/String; = "CreationDate"

.field private static final NODE_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final NODE_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final NODE_DATA_LIMIT:Ljava/lang/String; = "DataLimit"

.field private static final NODE_DIGITAL_CERTIFICATE:Ljava/lang/String; = "DigitalCertificate"

.field private static final NODE_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "DLBandwidth"

.field private static final NODE_EAP_METHOD:Ljava/lang/String; = "EAPMethod"

.field private static final NODE_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final NODE_EXPIRATION_DATE:Ljava/lang/String; = "ExpirationDate"

.field private static final NODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final NODE_FQDN:Ljava/lang/String; = "FQDN"

.field private static final NODE_FQDN_MATCH:Ljava/lang/String; = "FQDN_Match"

.field private static final NODE_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final NODE_HESSID:Ljava/lang/String; = "HESSID"

.field private static final NODE_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final NODE_HOME_OI:Ljava/lang/String; = "HomeOI"

.field private static final NODE_HOME_OI_LIST:Ljava/lang/String; = "HomeOIList"

.field private static final NODE_HOME_OI_REQUIRED:Ljava/lang/String; = "HomeOIRequired"

.field private static final NODE_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final NODE_INNER_EAP_TYPE:Ljava/lang/String; = "InnerEAPType"

.field private static final NODE_INNER_METHOD:Ljava/lang/String; = "InnerMethod"

.field private static final NODE_INNER_VENDOR_ID:Ljava/lang/String; = "InnerVendorID"

.field private static final NODE_INNER_VENDOR_TYPE:Ljava/lang/String; = "InnerVendorType"

.field private static final NODE_IP_PROTOCOL:Ljava/lang/String; = "IPProtocol"

.field private static final NODE_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final NODE_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final NODE_MIN_BACKHAUL_THRESHOLD:Ljava/lang/String; = "MinBackhaulThreshold"

.field private static final NODE_NETWORK_ID:Ljava/lang/String; = "NetworkID"

.field private static final NODE_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field private static final NODE_OTHER:Ljava/lang/String; = "Other"

.field private static final NODE_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final NODE_PASSWORD:Ljava/lang/String; = "Password"

.field private static final NODE_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final NODE_POLICY:Ljava/lang/String; = "Policy"

.field private static final NODE_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final NODE_PORT_NUMBER:Ljava/lang/String; = "PortNumber"

.field private static final NODE_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field private static final NODE_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final NODE_REALM:Ljava/lang/String; = "Realm"

.field private static final NODE_REQUIRED_PROTO_PORT_TUPLE:Ljava/lang/String; = "RequiredProtoPortTuple"

.field private static final NODE_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final NODE_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final NODE_SIM:Ljava/lang/String; = "SIM"

.field private static final NODE_SIM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final NODE_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final NODE_SP_EXCLUSION_LIST:Ljava/lang/String; = "SPExclusionList"

.field private static final NODE_SSID:Ljava/lang/String; = "SSID"

.field private static final NODE_START_DATE:Ljava/lang/String; = "StartDate"

.field private static final NODE_SUBSCRIPTION_PARAMETER:Ljava/lang/String; = "SubscriptionParameter"

.field private static final NODE_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final NODE_TIME_LIMIT:Ljava/lang/String; = "TimeLimit"

.field private static final NODE_TRUST_ROOT:Ljava/lang/String; = "TrustRoot"

.field private static final NODE_TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "TypeOfSubscription"

.field private static final NODE_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final NODE_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final NODE_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final NODE_UPLINK_BANDWIDTH:Ljava/lang/String; = "ULBandwidth"

.field private static final NODE_URI:Ljava/lang/String; = "URI"

.field private static final NODE_USAGE_LIMITS:Ljava/lang/String; = "UsageLimits"

.field private static final NODE_USAGE_TIME_PERIOD:Ljava/lang/String; = "UsageTimePeriod"

.field private static final NODE_USERNAME:Ljava/lang/String; = "Username"

.field private static final NODE_USERNAME_PASSWORD:Ljava/lang/String; = "UsernamePassword"

.field private static final NODE_VENDOR_ID:Ljava/lang/String; = "VendorId"

.field private static final NODE_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final PPS_MO_URN:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

.field private static final TAG:Ljava/lang/String; = "PpsMoParser"

.field private static final TAG_DDF_NAME:Ljava/lang/String; = "DDFName"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_NODE:Ljava/lang/String; = "Node"

.field private static final TAG_NODE_NAME:Ljava/lang/String; = "NodeName"

.field private static final TAG_RT_PROPERTIES:Ljava/lang/String; = "RTProperties"

.field private static final TAG_TYPE:Ljava/lang/String; = "Type"

.field private static final TAG_VALUE:Ljava/lang/String; = "Value"

.field private static final TAG_VER_DTD:Ljava/lang/String; = "VerDTD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "NodeName"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v3, :cond_0

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Duplicate NodeName node"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "Node"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "Value"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v4, :cond_4

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Duplicate Value node"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    if-nez v3, :cond_7

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Invalid node: missing NodeName"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    if-nez v4, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " missing both value and children"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " contained both value and children"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    if-eqz v4, :cond_a

    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;

    invoke-direct {v8, v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_a
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;

    invoke-direct {v8, v3, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v8
.end method

.method private static convertFromLongList(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    array-length v3, v1

    new-array v2, v3, [J

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get value from a non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for AAAServerTrustRoot"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for DigitalCertificate"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CertificateType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "CertSHA256Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under DigitalCertificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v0
.end method

.method private static parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for HomeSP"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CreationDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "ExpirationDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "UsernamePassword"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "DigitalCertificate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "Realm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "CheckAAAServerCertStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under Credential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    return-object v2
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Badly formatted time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for EAPMethod"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "InnerMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "VendorId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v2, "PpsMoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore unsupported EAP method parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "VendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerEAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerVendorID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerVendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under EAPMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method private static parseHexString(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Odd length hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-object v3
.end method

.method private static parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for HomeOI instance"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "HomeOI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "HomeOIRequired"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid HomeOI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under NetworkID instance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    if-nez v3, :cond_4

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "HomeOI instance missing OI field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    if-nez v4, :cond_5

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "HomeOI instance missing required field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private static parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for HomeOIList"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private static parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for HomeSP"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FQDN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "FriendlyName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "RoamingConsortiumOI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRoamingConsortiumOI(Ljava/lang/String;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "IconURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "NetworkID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "HomeOIList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "OtherHomePartners"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under HomeSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    return-object v3
.end method

.method private static parseInteger(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseLong(Ljava/lang/String;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid long integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for MinBackhaulThreshold"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/16 v9, 0xa

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Leaf node not expected for MinBackhaulThreshold instance"

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v4, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "NetworkType"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "DLBandwidth"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "ULBandwidth"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown node under MinBackhaulThreshold instance "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    if-nez v4, :cond_5

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Missing NetworkType field"

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string/jumbo v5, "home"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    invoke-virtual {p1, v6, v7}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    :goto_1
    return-void

    :cond_6
    const-string/jumbo v5, "roaming"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    invoke-virtual {p1, v6, v7}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    goto :goto_1

    :cond_7
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid network type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 12

    const/4 v11, 0x0

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/XMLParser;

    invoke-direct {v7}, Landroid/net/wifi/hotspot2/omadm/XMLParser;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v7, p0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;->parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-nez v5, :cond_0

    return-object v11

    :catch_0
    move-exception v4

    return-object v11

    :cond_0
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "MgmtTree"

    if-eq v8, v9, :cond_1

    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Root is not a MgmtTree"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1
    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "VerDTD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_3

    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Duplicate VerDTD element"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_2
    const-string/jumbo v9, "Node"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Unexpected multiple Node element under MgmtTree"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :try_end_1
    .catch Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v8, "PpsMoParser"

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_5
    const-string/jumbo v8, "PpsMoParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_6
    return-object v2
.end method

.method private static parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for NetworkID instance"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SSID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "HESSID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under NetworkID instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-nez v3, :cond_4

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "NetworkID instance missing SSID"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for NetworkID"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for OtherHomePartner instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FQDN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under OtherHomePartner instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-nez v2, :cond_3

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "OtherHomePartner instance missing FQDN field"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v2
.end method

.method private static parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for OtherHomePartners"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private static parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for Policy"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PreferredRoamingPartnerList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "MinBackhaulThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "PolicyUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "SPExclusionList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "RequiredProtoPortTuple"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "MaximumBSSLoadValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    goto :goto_0

    :cond_6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under Policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    return-object v2
.end method

.method private static parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for PPS instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HomeSP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Credential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "AAAServerTrustRoot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "SubscriptionUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "SubscriptionParameter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "CredentialPriority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "Extension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "PpsMoParser"

    const-string/jumbo v4, "Ignore Extension node for vendor specific information"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    return-object v2
.end method

.method private static parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/high16 v9, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "NodeName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v3, :cond_3

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate NodeName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const-string/jumbo v8, "Node"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UpdateIdentifier"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eq v5, v9, :cond_4

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Multiple node for UpdateIdentifier"

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const-string/jumbo v8, "RTProperties"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown URN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "PerProviderSubscription"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected NodeName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Multiple PPS instance"

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown tag under PPS node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    if-eqz v2, :cond_9

    if-eq v5, v9, :cond_9

    invoke-virtual {v2, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    :cond_9
    return-object v2
.end method

.method private static parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for PreferredRoamingPartner instance"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v4, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v4}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FQDN_Match"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid FQDN_Match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string/jumbo v6, "Priority"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "Country"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    aget-object v5, v3, v7

    const-string/jumbo v6, "exactMatch"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v7}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto :goto_0

    :cond_4
    aget-object v5, v3, v7

    const-string/jumbo v6, "includeSubdomains"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v8}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto/16 :goto_0

    :cond_5
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid FQDN_Match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under PreferredRoamingPartnerList instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    return-object v4
.end method

.method private static parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for PreferredRoamingPartnerList"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for RequiredProtoPortTuple instance"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IPProtocol"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "PortNumber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under RequiredProtoPortTuple instance"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_4

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Missing IPProtocol field"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-nez v2, :cond_5

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Missing PortNumber field"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for RequiredProtoPortTuple"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static parseRoamingConsortiumOI(Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v1, v3, [J

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SIM"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IMSI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "EAPType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under SIM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v2
.end method

.method private static parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SPExclusion instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SSID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Unknown node under SPExclusion instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-object v2
.end method

.method private static parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SPExclusionList"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private static parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for SubscriptionParameter"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "ExpirationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "TypeOfSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under SubscriptionParameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method private static parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for TrustRoot"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CertURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "CertSHA256Fingerprint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under TrustRoot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for Update Parameters"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v3, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UpdateInterval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "UpdateMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "Restriction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "URI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "UsernamePassword"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "TrustRoot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "Other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "PpsMoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore unsupported paramter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under Update Parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    return-object v3
.end method

.method private static parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for UsernamePassword"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Username"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "Password"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under UsernamePassword: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect RTPProperties node to only have one child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect Type node to only have one child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Type"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected tag for Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect DDFName node to have no child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DDFName"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected tag for DDFName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    const/16 v4, 0xa

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for UsageLimits"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "StartDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "TimeLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "UsageTimePeriod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under UsageLimits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method private static parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for UsernamePassword"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "MachineManaged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "SoftTokenApp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "AbleToShare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "EAPMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    goto :goto_0

    :cond_6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under UsernamPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    return-object v2
.end method
