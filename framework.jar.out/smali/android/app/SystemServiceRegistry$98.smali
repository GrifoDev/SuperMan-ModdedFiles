.class final Landroid/app/SystemServiceRegistry$98;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1199
    const-string/jumbo v2, "AAS"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1200
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    move-result-object v1

    .line 1201
    .local v1, "service":Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;
    new-instance v2, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;-><init>(Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1198
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$98;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    move-result-object v0

    return-object v0
.end method
