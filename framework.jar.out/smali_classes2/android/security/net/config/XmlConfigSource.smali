.class public Landroid/security/net/config/XmlConfigSource;
.super Ljava/lang/Object;
.source "XmlConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/XmlConfigSource$ParserException;
    }
.end annotation


# static fields
.field private static final CONFIG_BASE:I = 0x0

.field private static final CONFIG_DEBUG:I = 0x2

.field private static final CONFIG_DOMAIN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDebugBuild:Z

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mDomainMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResourceId:I

.field private final mTargetSandboxVesrsion:I

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    iput p2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    iput p4, p0, Landroid/security/net/config/XmlConfigSource;->mTargetSdkVersion:I

    iput p5, p0, Landroid/security/net/config/XmlConfigSource;->mTargetSandboxVesrsion:I

    return-void
.end method

.method private addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-void
.end method

.method private ensureInitialized()V
    .locals 8

    const/4 v3, 0x0

    iget-object v5, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v2, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v5

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/net/config/XmlConfigSource;->parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse XML configuration from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_1
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    :try_start_7
    throw v3

    :catch_3
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v2
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    monitor-exit v5

    return-void

    :catchall_2
    move-exception v2

    goto :goto_1
.end method

.method private static final getConfigString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "base-config"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "domain-config"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "debug-overrides"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "overridePins"

    invoke-interface {p1, v5, v4, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v4, "src"

    invoke-interface {p1, v5, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "src"

    invoke-interface {p1, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v3, :cond_0

    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v5, "certificates element missing src attribute"

    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v4

    :cond_0
    if-eq v2, v6, :cond_1

    new-instance v1, Landroid/security/net/config/ResourceCertificateSource;

    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/security/net/config/ResourceCertificateSource;-><init>(ILandroid/content/Context;)V

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v4, Landroid/security/net/config/CertificatesEntryRef;

    invoke-direct {v4, v1, v0}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    return-object v4

    :cond_1
    const-string/jumbo v4, "system"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v5, "Unknown certificates src. Should be one of system|user|@resourceVal"

    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v4
.end method

.method private parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/Domain;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x2

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    new-instance v16, Landroid/util/Pair;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v16, "hstsEnforced"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v16, "cleartextTrafficPermitted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p2}, Landroid/security/net/config/XmlConfigSource;->parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "domain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "domain element not allowed in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_5
    const-string/jumbo v16, "trust-anchors"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    if-eqz v14, :cond_6

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v17, "Multiple trust-anchor elements not allowed"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Landroid/security/net/config/XmlConfigSource;->parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    const/4 v14, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v16, "pin-set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "pin-set element not allowed in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_8
    if-eqz v13, :cond_9

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v17, "Multiple pin-set elements not allowed"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_9
    invoke-direct/range {p0 .. p1}, Landroid/security/net/config/XmlConfigSource;->parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v16, "domain-config"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Nested domain-config not allowed in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    :cond_d
    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v17, "No domain elements in domain-config"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v16

    :cond_e
    return-object v5
.end method

.method private parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v9, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    iget v9, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "_debug"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "xml"

    invoke-virtual {v7, v9, v11, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    return-object v10

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const-string/jumbo v9, "network-security-config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    const/4 v8, 0x0

    :goto_0
    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "debug-overrides"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v8, :cond_2

    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v11, "Only one debug-overrides allowed"

    invoke-direct {v9, v5, v11}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v9

    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_1
    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    if-eqz v10, :cond_8

    throw v10

    :cond_2
    :try_start_3
    iget-boolean v9, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-direct {p0, v5, v9, v11, v12}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-object v1, v0

    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_4
    if-eqz v10, :cond_9

    throw v10

    :catch_1
    move-exception v10

    goto :goto_4

    :catch_2
    move-exception v11

    if-nez v10, :cond_7

    move-object v10, v11

    goto :goto_2

    :cond_7
    if-eq v10, v11, :cond_1

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    throw v9

    :cond_9
    return-object v1
.end method

.method private parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/security/net/config/Domain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string/jumbo v2, "includeSubdomains"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v3, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v3, "Domain name missing"

    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v3, "domain contains additional elements"

    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has already been specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Landroid/security/net/config/Domain;

    invoke-direct {v2, v0, v1}, Landroid/security/net/config/Domain;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const-string/jumbo v21, "network-security-config"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string/jumbo v21, "base-config"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    if-eqz v18, :cond_0

    new-instance v21, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v22, "Only one base-config allowed"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v21

    :cond_0
    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v21, "domain-config"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v21, "debug-overrides"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    if-eqz v19, :cond_3

    new-instance v21, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v22, "Only one debug-overrides allowed"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v21

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :goto_1
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    if-nez v10, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/security/net/config/XmlConfigSource;->parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v10

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/net/config/XmlConfigSource;->mTargetSdkVersion:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/net/config/XmlConfigSource;->mTargetSandboxVesrsion:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(II)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    if-eqz v5, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    :goto_2
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v6, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v21

    if-nez v21, :cond_9

    invoke-virtual {v6, v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v8

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/net/config/Domain;

    new-instance v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object/from16 v5, v17

    goto :goto_2

    :cond_b
    invoke-virtual {v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    return-void
.end method

.method private parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string/jumbo v5, "digest"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/net/config/Pin;->isSupportedDigestAlgorithm(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported pin digest algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v6, "Missing pin digest"

    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v2}, Landroid/security/net/config/Pin;->getDigestLength(Ljava/lang/String;)I

    move-result v4

    array-length v5, v0

    if-eq v5, v4, :cond_2

    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "digest length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not match expected length for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v3

    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v6, "Invalid pin digest"

    invoke-direct {v5, p1, v6, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v6, "pin contains additional elements"

    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v5, Landroid/security/net/config/Pin;

    invoke-direct {v5, v2, v0}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string/jumbo v9, "expiration"

    invoke-interface {p1, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v10, "Invalid expiration date in pin-set"

    invoke-direct {v9, p1, v10}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v10, "Invalid expiration date in pin-set"

    invoke-direct {v9, p1, v10, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "pin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/security/net/config/PinSet;

    invoke-direct {v9, v6, v4, v5}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    return-object v9
.end method

.method private parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "certificates"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/security/net/config/XmlConfigSource;->parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    return-object v0
.end method
