.class public Lcom/android/settings/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public scpCreationParam:[B

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->storageType:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMode:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertAdminID:I

    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertUserID:I

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

    return-void
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .locals 6

    sget-object v4, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v2, v4

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uicc"

    const-string/jumbo v5, "sim"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    sget-object v4, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    return v1
.end method
