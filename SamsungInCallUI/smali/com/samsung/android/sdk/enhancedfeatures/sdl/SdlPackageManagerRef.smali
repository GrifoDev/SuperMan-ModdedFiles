.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/PackageManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSdlPackageManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->mSdlPackageManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->mSdlPackageManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->mSdlPackageManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;

    return-object v0
.end method


# virtual methods
.method public installPackage(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlPackageManagerRef;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
