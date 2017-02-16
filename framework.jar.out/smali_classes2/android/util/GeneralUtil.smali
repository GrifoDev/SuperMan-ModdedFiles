.class public Landroid/util/GeneralUtil;
.super Ljava/lang/Object;
.source "GeneralUtil.java"


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;

.field private static isPhone:Z

.field private static myInstance:Landroid/util/GeneralUtil;

.field static objFeature:Ljava/lang/Object;

.field static objInstance:Ljava/lang/Object;

.field private static supportedTouchKeyGloveMode:Z


# instance fields
.field private ctxt:Landroid/content/Context;

.field private featureCacheSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "GeneralUtil"

    sput-object v0, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/GeneralUtil;->DEBUG:Z

    .line 85
    const/4 v0, 0x0

    sput-object v0, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/GeneralUtil;->objInstance:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/GeneralUtil;->objFeature:Ljava/lang/Object;

    .line 111
    invoke-static {}, Landroid/util/GeneralUtil;->isPhoneInternal()Z

    move-result v0

    sput-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    .line 113
    invoke-static {}, Landroid/util/GeneralUtil;->isSupportedGloveModeInternal()Z

    move-result v0

    sput-boolean v0, Landroid/util/GeneralUtil;->supportedTouchKeyGloveMode:Z

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 101
    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 101
    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 141
    iput-object p1, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 139
    return-void
.end method

.method public static dump(Landroid/content/Context;Ljava/io/PrintWriter;)Z
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 261
    invoke-static {p0}, Landroid/util/GeneralUtil;->initialise(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    const/4 v2, 0x0

    return v2

    .line 269
    :cond_0
    const-string/jumbo v2, "===== Dump of supported system feature ====="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    sget-object v2, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v1, v2, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 273
    .local v1, "refSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, "iterators":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    const-string/jumbo v2, "===== End dump ====="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x1

    return v2
.end method

.method public static getPixelFromDP(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nDP"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 313
    .local v0, "d":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 315
    .local v1, "nPX":I
    return v1
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "fName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 229
    :cond_0
    return v2

    .line 235
    :cond_1
    invoke-static {p0}, Landroid/util/GeneralUtil;->initialise(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    return v2

    .line 245
    :cond_2
    sget-object v1, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v0, v1, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 247
    .local v0, "refSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/4 v1, 0x1

    return v1

    .line 253
    :cond_3
    return v2
.end method

.method private static initialise(Landroid/content/Context;)Z
    .locals 8
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 151
    sget-object v4, Landroid/util/GeneralUtil;->objInstance:Ljava/lang/Object;

    monitor-enter v4

    .line 153
    :try_start_0
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-nez v3, :cond_0

    .line 155
    new-instance v3, Landroid/util/GeneralUtil;

    invoke-direct {v3, p0}, Landroid/util/GeneralUtil;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 161
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-nez v3, :cond_1

    .line 167
    return v7

    .line 151
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 171
    :cond_1
    const/4 v2, 0x0

    .line 173
    .local v2, "infos":[Landroid/content/pm/FeatureInfo;
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v3, v3, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_2

    .line 179
    return v7

    .line 183
    :cond_2
    sget-object v4, Landroid/util/GeneralUtil;->objFeature:Ljava/lang/Object;

    monitor-enter v4

    .line 185
    :try_start_1
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-eqz v3, :cond_3

    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v3, v3, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    if-nez v3, :cond_3

    .line 187
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v3, v3, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 189
    .local v2, "infos":[Landroid/content/pm/FeatureInfo;
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    new-instance v5, Ljava/util/HashSet;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    iput-object v5, v3, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "f":Landroid/content/pm/FeatureInfo;
    const/4 v1, 0x0

    .end local v0    # "f":Landroid/content/pm/FeatureInfo;
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 195
    aget-object v0, v2, v1

    .line 197
    .local v0, "f":Landroid/content/pm/FeatureInfo;
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v3, v3, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "f":Landroid/content/pm/FeatureInfo;
    .end local v1    # "i":I
    .end local v2    # "infos":[Landroid/content/pm/FeatureInfo;
    :cond_3
    monitor-exit v4

    .line 205
    sget-object v3, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v3, v3, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    if-nez v3, :cond_4

    .line 211
    return v7

    .line 183
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 215
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method public static isBiggerThanSW(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sw"    # I

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v0, p1, :cond_0

    .line 323
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeviceDefault(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 338
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 340
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11600cb

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 342
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x1

    return v1

    .line 348
    :cond_0
    return v3
.end method

.method public static isPhone()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    return v0
.end method

.method private static isPhoneInternal()Z
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "sDeviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 131
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportedGloveMode()Z
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Landroid/util/GeneralUtil;->supportedTouchKeyGloveMode:Z

    return v0
.end method

.method private static isSupportedGloveModeInternal()Z
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/sec/sec_touchkey/glove_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "gloveModeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x1

    return v1

    .line 390
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isThemeDark(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
