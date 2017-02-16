.class public Lcom/android/server/FMPlayerVolumeTable;
.super Ljava/lang/Object;
.source "FMPlayerVolumeTable.java"


# static fields
.field private static mDefaultVolumeTable:Ljava/lang/String;

.field private static mVolumeTable:[I


# instance fields
.field private VolumePropertyname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "0,2,3,4,5,7,10,14,18,25,34,45,61,82,111,150"

    sput-object v0, Lcom/android/server/FMPlayerVolumeTable;->mDefaultVolumeTable:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string/jumbo v2, "service.brcm.fm.volumetable"

    iput-object v2, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lcom/android/server/FMPlayerVolumeTable;->getPropertyVolumeTable()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "testVol":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_BROADCOM_VOLUME_TABLE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "volumeFromFeature":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-direct {p0, v1, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    .line 19
    return-void

    .line 21
    :cond_0
    sget-object v2, Lcom/android/server/FMPlayerVolumeTable;->mDefaultVolumeTable:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    .line 11
    .end local v1    # "volumeFromFeature":Ljava/lang/String;
    :goto_0
    return-void

    .line 24
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/FMPlayerVolumeTable;->WriteVolumeTable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private WriteVolumeTable(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "hasProperty"    # Z

    .prologue
    const/16 v5, 0x10

    .line 35
    if-nez p2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "volume_table":[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v5, :cond_1

    .line 42
    return-void

    .line 45
    :cond_1
    new-array v2, v5, [I

    sput-object v2, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 47
    sget-object v2, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    aget-object v3, v1, v0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private getPropertyVolumeTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "VolumeTable":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMPlayerVolumeTable;->VolumePropertyname:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "VolumeTable":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public ReadVolume(I)I
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/FMPlayerVolumeTable;->mVolumeTable:[I

    aget v0, v0, p1

    return v0
.end method
