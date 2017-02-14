.class final Landroid/app/SystemServiceRegistry$101;
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
        "Lcom/samsung/android/codecsolution/SemCodecSolutionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/codecsolution/SemCodecSolutionManager;
    .locals 3

    const-string/jumbo v2, "CodecSolution"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;-><init>(Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$101;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/codecsolution/SemCodecSolutionManager;

    move-result-object v0

    return-object v0
.end method
