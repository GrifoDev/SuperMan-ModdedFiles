.class public Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;
.super Ljava/lang/Object;
.source "LanguageManagerSdl.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;->get(Ljava/lang/String;)Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;-><init>(Lcom/samsung/android/handwriting/resources/SemLanguagePack;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;->initialize()V

    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
    .locals 5

    move-object v1, p1

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/handwriting/resources/SemLanguageManager$OnUpdateListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    const-string/jumbo v4, "updateLanguageList"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call SemLanguageManager.updateLanguageList(OnUpdateListener, boolean)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;->updateLanguageList(Lcom/samsung/android/handwriting/resources/SemLanguageManager$OnUpdateListener;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call SemLanguageManager.updateLanguageList(OnUpdateListener)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->mLanguageManager:Lcom/samsung/android/handwriting/resources/SemLanguageManager;

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$2;-><init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/handwriting/resources/SemLanguageManager;->updateLanguageList(Lcom/samsung/android/handwriting/resources/SemLanguageManager$OnUpdateListener;)V

    goto :goto_0
.end method
