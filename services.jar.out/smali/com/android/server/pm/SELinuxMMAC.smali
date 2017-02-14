.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;,
        Lcom/android/server/pm/SELinuxMMAC$MDMID;
    }
.end annotation


# static fields
.field private static final ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final AMS_POLICY_ENFORCING:Ljava/lang/String; = "persist.security.ams.enforcing"

.field private static final AUTOPLAY_APP_STR:Ljava/lang/String; = ":autoplayapp"

.field public static final BBCCONTAINER:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final BBC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BBC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final BLACKLISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static BT_TYPE:I = 0x0

.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field public static final IRMCONTAINER:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final MAC_PERMISSIONS:Ljava/io/File;

.field private static final MAC_PERMISSIONSES:[Ljava/io/File;

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc6

.field private static final MAX_DDCCONTAIN_NUM:I = 0x1

.field private static final MAX_IRMCONTAIN_NUM:I = 0x1

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field public static final MYCONTAINER:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final PRIVILEGED_APP_STR:Ljava/lang/String; = ":privapp"

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static RESOURCE_NUM:I = 0x0

.field public static final SBALISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SDCARD_TYPE:I = 0x0

.field private static final SEAPP_CONTEXTS:Ljava/io/File;

.field private static final SEAPP_CONTEXTSES:[Ljava/lang/String;

.field private static final SEAPP_CONTEXTS_HASH:[B

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNTRUSTED_CATEGORY:I = 0x3ff

.field private static final VERSION_FILE:Ljava/io/File;

.field public static final WHITELISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final XATTR_SEAPP_HASH:Ljava/lang/String; = "user.seapp_hash"

.field private static bbc_containerIDTable:[I

.field private static bbc_flag:Z

.field private static ddc_containerIDTable:[I

.field private static generic_containerIDTable:[I

.field private static irm_containerIDTable:[I

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/selinux_version"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->VERSION_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "/etc/security/mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/seapp_contexts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/io/File;

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/io/File;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS_HASH:[B

    sput v5, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    sput v4, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    sput v6, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    sput-boolean v5, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/16 v0, 0xc6

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-array v0, v8, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x0

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONSES:[Ljava/io/File;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "/data/security/seapp_contexts"

    aput-object v1, v0, v5

    const-string/jumbo v1, "/data/security/spota/seapp_contexts"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/seapp_contexts"

    aput-object v1, v0, v6

    const/4 v1, 0x0

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_1d

    aget-object v12, v16, v15

    if-nez v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    sget-object v18, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ApplicationInfo;->isAutoPlayApp()Z

    move-result v18

    if-eqz v18, :cond_2

    const-string/jumbo v1, ":autoplayapp"

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v1, :cond_c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":privapp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    sget-object v18, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/Policy;

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/Policy;->mCategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v11, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v11}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v11, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    :cond_4
    if-eqz v3, :cond_6

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v13, 0x0

    iget-object v15, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    :cond_5
    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_6
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v3, 0x0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    :cond_7
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v3, 0x0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    if-eqz v3, :cond_9

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/4 v2, 0x0

    iget-object v15, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    const-string/jumbo v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v2, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v2, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_9
    :goto_5
    const-string/jumbo v15, "platform"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string/jumbo v15, "shared"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_1a

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const-string/jumbo v1, ":privapp"

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v15, "RCPSyncerName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_13
    const-string/jumbo v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_15
    if-nez v5, :cond_16

    if-nez v7, :cond_16

    if-nez v6, :cond_16

    if-eqz v4, :cond_1a

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    :cond_17
    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    :cond_18
    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    :cond_19
    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1b

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_1b
    return-void

    :cond_1c
    const-string/jumbo v18, "SELinuxMMAC"

    const-string/jumbo v19, "Install policy instance is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1d
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->mCategory:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->mCategory:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isAutoPlayApp()Z

    move-result v15

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":autoplayapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":autoplayapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v15

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":privapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":privapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    :cond_1f
    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v16, "untrusted"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v16, "untrusted"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v16, "0,701-1023"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v16, "0,501"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isAutoPlayApp()Z

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":autoplayapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":autoplayapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v15

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":privapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":privapp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    :cond_22
    const-string/jumbo v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " assignseinfovalue, <package name > = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "<seinfo> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "<bbcseinfo> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "<category> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v3, " Given Package Name has a non-empty BBC Container Allow Category"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v3, "Given Package Name has returned sigs NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v3, " Given Package Name has a non-empty MyContainer Allow Category"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v3, "checkContainerAllowCategory, false is returned."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v3, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method protected static compareHashsets(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "SELinuxMMAC"

    const-string/jumbo v4, "Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Looping over packages in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Package not found in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Looping over packages in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Package not found in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected static createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v8, "container"

    monitor-enter v8

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0xc6

    if-ge v4, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    aget v7, v7, v4

    if-nez v7, :cond_3

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v1, 0x0

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v4

    add-int/lit16 v7, v4, 0x1f5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit16 v6, v4, 0x1f5

    add-int/lit16 v7, v4, 0x1f5

    monitor-exit v8

    return v7

    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SELinuxMMAC"

    const-string/jumbo v9, "createBBCContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    monitor-exit v8

    return v7

    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "SELinuxMMAC"

    const-string/jumbo v9, "createBBCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, -0x7

    monitor-exit v8

    return v7

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method protected static createContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_1
    const-string/jumbo v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method protected static createDDCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x3ff

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v4, "create DDCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x7

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected static createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x2be

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v4, "create IRMContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x7

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v8, "container"

    monitor-enter v8

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x12c

    if-ge v4, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v7, v7, v4

    if-nez v7, :cond_3

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v4

    add-int/lit16 v7, v4, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit16 v6, v4, 0xc9

    add-int/lit16 v7, v4, 0xc9

    monitor-exit v8

    return v7

    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SELinuxMMAC"

    const-string/jumbo v9, "createMyContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    monitor-exit v8

    return v7

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "SELinuxMMAC"

    const-string/jumbo v9, "createMyContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, -0x7

    monitor-exit v8

    return v7

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 18

    :try_start_0
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v15, "SELinuxMMAC"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_2
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    const/4 v12, 0x0

    :goto_2
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_3

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    :goto_3
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_5

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    goto :goto_4

    :cond_4
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_5
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_7

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    goto :goto_6

    :cond_6
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->setupResourceLists()V

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v15, v17

    const/4 v11, 0x0

    :goto_7
    const/16 v15, 0xc6

    if-ge v11, v15, :cond_8

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/16 v16, 0x0

    aput v16, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_8
    const/16 v15, 0x12c

    if-ge v11, v15, :cond_0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/16 v16, 0x0

    aput v16, v15, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method protected static getAcrossKnoxPkgInfo()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getAllPackageNamesFromSEContainer(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v5, "container"

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne p0, v4, :cond_0

    monitor-exit v5

    return-object v7

    :cond_0
    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    monitor-exit v5

    return-object v7

    :cond_1
    const/4 v4, 0x4

    if-ne p0, v4, :cond_2

    monitor-exit v5

    return-object v7

    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_5

    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "getAllPackageNamesFromSEContainer, packageNames.size is 0"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_4
    monitor-exit v5

    return-object v3

    :cond_5
    monitor-exit v5

    return-object v7
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 14

    const/16 v13, 0x3ff

    const/4 v8, 0x0

    const/4 v12, 0x0

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    array-length v7, p1

    new-array v6, v7, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    new-instance v7, Landroid/content/pm/Signature;

    aget-object v9, p1, v2

    invoke-direct {v7, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v9, v6

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_8

    aget-object v4, v6, v7

    if-nez v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Policy;

    if-eqz v5, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {v5, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget v7, v5, Lcom/android/server/pm/Policy;->mCategory:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v7, v5, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    invoke-virtual {v5, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v7, v5, Lcom/android/server/pm/Policy;->mCategory:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v7, v5, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v8, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_3
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    :cond_4
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    if-eqz v1, :cond_5

    iget v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v7, :cond_6

    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "SELinuxMMAC"

    const-string/jumbo v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    invoke-virtual {v7}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    invoke-virtual {v7}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    iget v7, v7, Lcom/android/server/pm/Policy;->mCategory:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->category:I

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    iget v7, v7, Lcom/android/server/pm/Policy;->mCategory:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    iget-object v7, v7, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Policy;

    iget-object v7, v7, Lcom/android/server/pm/Policy;->mAllowCategory:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v8, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_9
    const-string/jumbo v7, "untrusted"

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string/jumbo v7, "untrusted"

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const-string/jumbo v7, "0,701-1023"

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    const-string/jumbo v7, "0,501"

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v8, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto :goto_4
.end method

.method protected static getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getBBCFlag()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    return v0
.end method

.method public static getBlacklist(II)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v5, 0x0

    const-string/jumbo v10, "container"

    monitor-enter v10

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_4

    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v4, v8, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    array-length v11, v7

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v1, v7, v9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    const/16 v8, 0x66

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v8, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_3

    const/4 v8, 0x4

    if-ne p2, v8, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v8, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v8

    :cond_6
    :try_start_1
    const-string/jumbo v8, "SELinuxMMAC"

    const-string/jumbo v9, "getContainerAllowPackageNamesFromSEContainer, null is returned"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    monitor-exit v10

    return-object v8

    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method private static getCurrentContextsHash()[B
    .locals 3

    invoke-static {}, Landroid/os/SELinux;->computeSEPolicyIndex()I

    move-result v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTSES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "container"

    monitor-enter v5

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/16 v4, 0x66

    if-eq p0, v4, :cond_3

    :try_start_1
    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    const/16 v4, 0x2be

    if-eq p0, v4, :cond_3

    :try_start_2
    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "Given Container ID is not IRM Container ID - Returning Null"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "Given Container ID is not BBC Container ID - Returning Null"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_3
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_6

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-eq v4, p0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    if-ne v4, p0, :cond_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_6
    :try_start_5
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "getPackageNamesFromSEContainerID, packageNames.size is 0"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method public static getSBAlist(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const-string/jumbo v5, "container"

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_1
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "Given Package Name has returned sigs NULL"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eq p3, v8, :cond_4

    if-ne p3, v6, :cond_8

    :cond_4
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    :cond_5
    :goto_0
    if-eq p3, v8, :cond_6

    if-ne p3, v9, :cond_9

    :cond_6
    if-eqz v2, :cond_b

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v6, 0x2be

    if-ne v4, v6, :cond_b

    :cond_7
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v4}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v4

    :cond_8
    const/4 v4, 0x4

    if-eq p3, v4, :cond_4

    if-ne p3, v9, :cond_5

    :try_start_2
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    goto :goto_0

    :cond_9
    const/4 v4, 0x4

    if-eq p3, v4, :cond_6

    if-ne p3, v6, :cond_b

    if-eqz v2, :cond_b

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v6, 0x66

    if-ne v4, v6, :cond_b

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return v4

    :cond_a
    :try_start_3
    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return v7

    :cond_b
    :try_start_4
    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v6, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v7

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected static getSEContainerIDsForSystem()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSEContainerIDsForSystem, categorys.size is 0"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v7, "SELinuxMMAC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSEContainerIDsForSystem, categorys: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 14

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, "container"

    monitor-enter v10

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    :cond_1
    new-instance v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v5}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string/jumbo v9, "SELinuxMMAC"

    const-string/jumbo v11, "Given Package Name has returned sigs NULL"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    monitor-exit v10

    return-object v9

    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_6

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v6, v0

    :goto_0
    iget-object v4, v6, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :cond_5
    if-eqz v8, :cond_b

    const/4 v9, 0x0

    array-length v11, v8

    :goto_1
    if-ge v9, v11, :cond_a

    aget-object v2, v8, v9

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_7

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v9, 0x66

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    :cond_6
    :try_start_2
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v6, v0

    goto :goto_0

    :cond_7
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_8

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {p0, p1, v12}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "SELinuxMMAC"

    const-string/jumbo v13, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_a
    :try_start_3
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    :cond_b
    :try_start_4
    const-string/jumbo v9, "SELinuxMMAC"

    const-string/jumbo v11, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    monitor-exit v10

    return-object v9
.end method

.method public static getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v5, "untrusted"

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v6, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SELinuxMMAC"

    const-string/jumbo v7, "getSeinfo find packageName"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "SELinuxMMAC"

    const-string/jumbo v7, "getSeinfo find MDMID"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v5, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSeinfo find MDMID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v5
.end method

.method private static getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v6, "SELinuxMMAC"

    const-string/jumbo v7, "getSignatureFromPackage: packageName is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/16 v7, 0x40

    invoke-interface {v3, p0, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    :cond_2
    const-string/jumbo v6, "SELinuxMMAC"

    const-string/jumbo v7, "getSignatureFromPackage: pi is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v8
.end method

.method public static getWhitelist(II)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static hasBBCContainers()Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static hasDDCContainers()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasGenericContainers()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static hasSEContainers()Z
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.samsung.android.irm.service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isBBCAgent()Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public static isBBCContainerID(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1f5

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2bb

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "SELinuxMMAC"

    const-string/jumbo v2, "isBBCContainerID, false is returned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "container"

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v5

    const-string/jumbo v4, "SELinuxMMAC"

    const-string/jumbo v5, "isContainerCreatedbyCaller returning false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static isMyContainerID(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc9

    if-lt p0, v1, :cond_0

    const/16 v1, 0x1f5

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "SELinuxMMAC"

    const-string/jumbo v2, "isMyContainerID, false is returned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isRestoreconNeeded(Ljava/io/File;)Z
    .locals 8

    const/16 v7, 0x14

    const-string/jumbo v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRestoreconNeeded =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getCurrentContextsHash()[B

    move-result-object v1

    const/16 v4, 0x14

    new-array v0, v4, [B

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user.seapp_hash"

    invoke-static {v4, v5, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v2

    iget v4, v2, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENODATA:I

    if-eq v4, v5, :cond_0

    const-string/jumbo v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to read seapp hash for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method protected static isSEContainerActivated(I)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "container"

    monitor-enter v6

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v6

    return v4

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "cert"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method public static readInstallPolicy()Z
    .locals 22

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    invoke-static {}, Landroid/os/SELinux;->computeSEPolicyIndex()I

    move-result v6

    sget-object v19, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONSES:[Ljava/io/File;

    aget-object v16, v19, v6

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v9, v0, [Ljava/io/File;

    const/16 v19, 0x0

    aput-object v16, v9, v19

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aput-object v19, v9, v20

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/data/security/bbccontainer/mac_permissions.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x2

    aput-object v19, v9, v20

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x3

    aput-object v19, v9, v20

    const/16 v19, 0x0

    const/16 v20, 0x4

    aput-object v19, v9, v20

    :goto_0
    aget-object v19, v9, v8

    if-eqz v19, :cond_4

    :try_start_0
    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Using policy file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v9, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/FileReader;

    aget-object v19, v9, v8

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string/jumbo v19, "policy"

    const/16 v20, 0x2

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v10, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v13, v14

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "signer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string/jumbo v19, "signature"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "<signer> without signature at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v13, v14

    :goto_3
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Exception @"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v19, " while parsing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v19, "SELinuxMMAC"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :cond_1
    :try_start_4
    new-instance v18, Landroid/content/pm/Signature;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v18, :cond_2

    :try_start_5
    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "<signer> with null signature at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v7

    move-object v13, v14

    :goto_4
    :try_start_6
    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exception parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v4

    :try_start_7
    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "<signer> with bad signature at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v19

    move-object v13, v14

    :goto_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19

    :cond_2
    :try_start_8
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    move-result-object v12

    sget-object v19, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_4
    new-instance v15, Lcom/android/server/pm/PolicyComparator;

    invoke-direct {v15}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    invoke-static {v11, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v15}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    move-result v19

    if-eqz v19, :cond_5

    const-string/jumbo v19, "SELinuxMMAC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ERROR! Duplicate entries found parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_5
    sget-object v19, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v19

    :try_start_9
    sput-object v11, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v19

    const/16 v19, 0x1

    return v19

    :catchall_1
    move-exception v20

    monitor-exit v19

    throw v20

    :catchall_2
    move-exception v19

    goto :goto_5

    :catch_3
    move-exception v5

    goto/16 :goto_3

    :catch_4
    move-exception v7

    goto/16 :goto_4
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "value"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "seinfo"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 60
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v56, "signer"

    const/16 v57, 0x2

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v56

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v43, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct/range {v43 .. v43}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v41

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/16 v48, 0x0

    const/4 v12, 0x0

    const/16 v44, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/16 v35, 0x0

    const/16 v34, 0x0

    const/16 v46, 0x0

    const/4 v14, 0x0

    const/16 v47, 0x0

    const/4 v15, 0x0

    const/16 v51, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    const-string/jumbo v56, "signature"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v54

    const/16 v56, 0x1

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_2e

    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v56

    move/from16 v0, v56

    move/from16 v1, v41

    if-le v0, v1, :cond_2e

    :cond_1
    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    const/16 v56, 0x4

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v56, "seinfo"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2

    const-string/jumbo v56, "value"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    move-object/from16 v48, v49

    const-string/jumbo v56, "category"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v56, "allowcategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v56, "bbccategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v56, "bbcallowcategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setCategoryOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lcom/android/server/pm/Policy$PolicyBuilder;->setAllowCategory(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Lcom/android/server/pm/Policy$PolicyBuilder;->setBBCCategoryOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Lcom/android/server/pm/Policy$PolicyBuilder;->setBBCAllowCategory(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v56, "package"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v56, "cert"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_4

    const-string/jumbo v56, "signature"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v56, "container"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_5

    const-string/jumbo v56, "value"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setContainerFlag(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v56, "service"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_29

    new-instance v22, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    const/16 v33, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string/jumbo v56, "name"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_6

    const-string/jumbo v56, "android"

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_10

    const-string/jumbo v56, "SELinuxMMAC"

    const-string/jumbo v57, "<package> is android, don\'t skip"

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v56, "category"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v56, "bbccategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v56, "seinfo"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v56, "bbcseinfo"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v56, "allowcategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v56, "bbcallowcategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v56, "containerallowcategory"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v56, "agent"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v28, :cond_7

    const-string/jumbo v28, "0,701-1023"

    :cond_7
    if-nez v29, :cond_8

    const-string/jumbo v29, "0,501"

    :cond_8
    new-instance v42, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v42 .. v42}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v44, :cond_9

    if-eqz v19, :cond_9

    const/16 v26, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    if-eqz v20, :cond_11

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, ","

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    :cond_9
    :goto_1
    if-eqz v44, :cond_14

    if-eqz v32, :cond_14

    :goto_2
    if-eqz v32, :cond_a

    :try_start_0
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    if-eqz v30, :cond_b

    :try_start_1
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_4
    if-eqz v33, :cond_15

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "innerSeinfo = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    if-eqz v31, :cond_17

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    :cond_d
    :goto_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_19

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_19

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x2bc

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_19

    const/4 v11, 0x1

    :goto_7
    const-string/jumbo v56, "issdcardsbaapp"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v56, "isbluetoothsbaapp"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v56, "sdcarduserid"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const-string/jumbo v56, "bluetoothuserid"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v56, "sdcarduseridBL"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string/jumbo v56, "bluetoothuseridBL"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v35, :cond_e

    const-string/jumbo v56, "true"

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_e

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v56, v0

    or-int/lit8 v56, v56, 0x4

    move/from16 v0, v56

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashSet;

    move-object/from16 v0, v56

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v34, :cond_f

    const-string/jumbo v56, "true"

    move-object/from16 v0, v56

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_f

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v56, v0

    or-int/lit8 v56, v56, 0x8

    move/from16 v0, v56

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashSet;

    move-object/from16 v0, v56

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v46, :cond_1b

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    const-string/jumbo v56, ","

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v52, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v58, v0

    move/from16 v57, v56

    :goto_8
    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_1b

    aget-object v36, v55, v57

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1a

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/HashSet;

    :goto_9
    move-object/from16 v0, v52

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v56, v57, 0x1

    move/from16 v57, v56

    goto :goto_8

    :cond_10
    const-string/jumbo v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "<package> without valid name at "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    if-eqz v20, :cond_13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    const/16 v56, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_1

    :cond_14
    if-eqz v44, :cond_0

    if-eqz v30, :cond_0

    goto/16 :goto_2

    :catch_0
    move-exception v25

    const-string/jumbo v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " does not define correct category."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v25

    const-string/jumbo v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " does not define correct bbccategory."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_15
    if-eqz v48, :cond_c

    if-eqz v6, :cond_16

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, v48

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_a

    :cond_17
    if-eqz v48, :cond_d

    if-eqz v9, :cond_18

    move-object/from16 v0, v22

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, v48

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    goto :goto_b

    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_1a
    new-instance v52, Ljava/util/HashSet;

    invoke-direct/range {v52 .. v52}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_9

    :cond_1b
    if-eqz v14, :cond_1d

    move-object/from16 v0, v22

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    const-string/jumbo v56, ","

    move-object/from16 v0, v56

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v16, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v58, v0

    move/from16 v57, v56

    :goto_c
    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_1d

    aget-object v36, v55, v57

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1c

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashSet;

    :goto_d
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v56, v57, 0x1

    move/from16 v57, v56

    goto :goto_c

    :cond_1c
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    goto :goto_d

    :cond_1d
    if-eqz v47, :cond_1f

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    const-string/jumbo v56, ","

    move-object/from16 v0, v47

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v45, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v58, v0

    move/from16 v57, v56

    :goto_e
    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_1f

    aget-object v36, v55, v57

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1e

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/HashSet;

    :goto_f
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v56, v57, 0x1

    move/from16 v57, v56

    goto :goto_e

    :cond_1e
    new-instance v45, Ljava/util/HashSet;

    invoke-direct/range {v45 .. v45}, Ljava/util/HashSet;-><init>()V

    goto :goto_f

    :cond_1f
    if-eqz v15, :cond_21

    move-object/from16 v0, v22

    iput-object v15, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string/jumbo v56, ","

    move-object/from16 v0, v56

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/4 v13, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v58, v0

    move/from16 v57, v56

    :goto_10
    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_21

    aget-object v36, v55, v57

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_20

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    :goto_11
    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v59, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    move-object/from16 v0, v56

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v56, v57, 0x1

    move/from16 v57, v56

    goto :goto_10

    :cond_20
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    goto :goto_11

    :cond_21
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_0

    if-eqz v5, :cond_27

    new-instance v37, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_22

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_22

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    :goto_12
    if-eqz v11, :cond_24

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v18

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f5

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_0

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v57, v0

    move/from16 v0, v57

    add-int/lit16 v0, v0, -0x1f5

    move/from16 v57, v0

    const/16 v58, 0x1

    aput v58, v56, v57

    goto/16 :goto_0

    :cond_22
    if-nez v11, :cond_23

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_23

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    goto :goto_12

    :cond_23
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    goto :goto_12

    :cond_24
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v18

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    const/16 v57, 0xc9

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    const/16 v57, 0x2be

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_25

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/16 v57, 0x1

    const/16 v58, 0x0

    aput v57, v56, v58

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    const/16 v57, 0x3ff

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_26

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/16 v57, 0x1

    const/16 v58, 0x0

    aput v57, v56, v58

    goto/16 :goto_0

    :cond_26
    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v57, v0

    move/from16 v0, v57

    add-int/lit16 v0, v0, -0xc9

    move/from16 v57, v0

    const/16 v58, 0x1

    aput v58, v56, v57

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x2bc

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_28

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_28
    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v56, "containerallowpackage"

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2d

    new-instance v22, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    const-string/jumbo v56, "persist.security.ams.enforcing"

    const-string/jumbo v57, "0"

    invoke-static/range {v56 .. v57}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    :goto_13
    const/16 v56, 0x2

    move/from16 v0, v56

    if-ge v7, v0, :cond_2a

    const/4 v7, 0x3

    const-string/jumbo v56, "persist.security.ams.enforcing"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string/jumbo v56, "srcpkgname"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string/jumbo v56, "destpkgname"

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2b

    const-string/jumbo v24, "allknoxpackages"

    :cond_2b
    new-instance v21, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v51, :cond_0

    if-eqz v19, :cond_0

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2c

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v56, v0

    add-int/lit8 v39, v56, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v56, v0

    add-int/lit8 v57, v39, -0x1

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v58

    move-object/from16 v2, v38

    move/from16 v3, v59

    move/from16 v4, v57

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v56, v39, -0x1

    aput-object v24, v38, v56

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v25

    const-string/jumbo v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Get wrong Property value from AMS_POLICY_ENFORCING: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_13

    :cond_2c
    const/16 v56, 0x1

    move/from16 v0, v56

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v56, 0x0

    aput-object v24, v38, v56

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2d
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2e
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v56

    return-object v56
.end method

.method protected static removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    add-int/lit16 v4, p2, -0x1f5

    const/4 v5, 0x0

    aput v5, v2, v4

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v1, 0x0

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_2
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, -0xc

    monitor-exit v3

    return v2
.end method

.method protected static removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    return v4

    :cond_1
    const-string/jumbo v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    return v4

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    return v4
.end method

.method protected static removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v2, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_2
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, -0xc

    monitor-exit v3

    return v2
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    add-int/lit16 v4, p2, -0xc9

    const/4 v5, 0x0

    aput v5, v2, v4

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_2
    const-string/jumbo v2, "SELinuxMMAC"

    const-string/jumbo v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, -0xc

    monitor-exit v3

    return v2
.end method

.method private static returnHash(Ljava/io/File;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setBBCFlag(Z)I
    .locals 1

    sput-boolean p0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/4 v0, 0x0

    return v0
.end method

.method public static setRestoreconDone(Ljava/io/File;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user.seapp_hash"

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getCurrentContextsHash()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to persist seapp hash in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setupResourceLists()V
    .locals 3

    const-string/jumbo v1, "SELinuxMMAC"

    const-string/jumbo v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x61

    if-lt v1, v5, :cond_3

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_3

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x41

    if-lt v1, v5, :cond_4

    const/16 v5, 0x5a

    if-le v1, v5, :cond_1

    :cond_4
    if-nez v2, :cond_6

    const/16 v5, 0x30

    if-lt v1, v5, :cond_5

    const/16 v5, 0x39

    if-le v1, v5, :cond_2

    :cond_5
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_2

    :cond_6
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_7

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    return v6

    :cond_8
    return v3
.end method
