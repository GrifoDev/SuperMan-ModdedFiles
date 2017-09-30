.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;


# static fields
.field private static final SYSTEM_PROPERTIES_CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    const-string v0, "class not found. unsupported"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method
