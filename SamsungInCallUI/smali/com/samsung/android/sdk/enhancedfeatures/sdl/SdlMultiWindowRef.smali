.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSdlMultiWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->mSdlMultiWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->mSdlMultiWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->mSdlMultiWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    return-object v0
.end method


# virtual methods
.method public disableFloatingWindow(Landroid/view/Window;)V
    .locals 3

    const-string v0, "disableFloatingWindow"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_0
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "multiWindowFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
