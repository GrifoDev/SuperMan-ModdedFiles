.class public Lcom/absolute/android/persistence/AppProfile;
.super Ljava/lang/Object;
.source "AppProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_accessKey:Ljava/lang/String;

.field private m_checkRunningSecs:Ljava/lang/Integer;

.field private m_extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxRestartAttempts:Ljava/lang/Integer;

.field private m_maxUpdateAttempts:Ljava/lang/Integer;

.field private m_monitor:Ljava/lang/Boolean;

.field private m_monitorIntents:[Ljava/lang/String;

.field private m_packageName:Ljava/lang/String;

.field private m_persist:Ljava/lang/Boolean;

.field private m_restartIntent:Ljava/lang/String;

.field private m_startOnInstall:Ljava/lang/Boolean;

.field private m_startOnInstallIntent:Ljava/lang/String;

.field private m_updateIpAddress:Ljava/lang/String;

.field private m_updateRetryMinutes:Ljava/lang/Integer;

.field private m_updateUrl:Ljava/lang/String;

.field private m_versionCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UpdateHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    new-instance v0, Lcom/absolute/android/persistence/AppProfile$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object p11, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "package name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "version is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/absolute/android/persistence/AppProfile;

    invoke-direct {v2}, Lcom/absolute/android/persistence/AppProfile;-><init>()V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_3
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_4
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_5
    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-nez v0, :cond_8

    :goto_6
    iput-object v1, v2, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    goto :goto_6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/absolute/android/persistence/AppProfile;

    if-eqz v2, :cond_4

    nop

    nop

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRunningSecs()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtras()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsMonitored()Z
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsPersisted()Z
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMaxRestartAttempts()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxUpdateAttempts()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonitorIntents()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOnInstall()Z
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStartOnInstallIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateHostSPKIHash()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    sget-object v1, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUpdateIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRetryMinutes()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    return-void
.end method

.method public setCheckRunningSecs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    return-void
.end method

.method public setExtras(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void
.end method

.method public setIsMonitored(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsPersisted(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    return-void
.end method

.method public setMaxRestartAttempts(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxUpdateAttempts(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    return-void
.end method

.method public setMonitorIntents([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    return-void
.end method

.method public setRestartIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    return-void
.end method

.method public setStartOnInstall(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    return-void
.end method

.method public setStartOnInstallIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    return-void
.end method

.method public setUpdateHostSPKIHash(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    sget-object v1, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public setUpdateIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setUpdateRetryMinutes(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "version is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PackageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsPersisted = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsMonitored = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "MonitorIntents = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CheckRunningSecs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MaxRestartAttempts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartOnInstall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartOnInstallIntent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RestartIntent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccessKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateIpAddress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MaxUpdateAttempts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateRetryMinutes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateHostSPKIHash = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
