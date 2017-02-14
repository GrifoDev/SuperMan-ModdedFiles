.class final Landroid/app/SystemServiceRegistry$94;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Lcom/absolute/android/persistence/ABTPersistenceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 3

    const-string/jumbo v2, "ABTPersistenceService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;

    move-result-object v1

    new-instance v2, Lcom/absolute/android/persistence/ABTPersistenceManager;

    invoke-direct {v2, v1}, Lcom/absolute/android/persistence/ABTPersistenceManager;-><init>(Lcom/absolute/android/persistence/IABTPersistence;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$94;->createService()Lcom/absolute/android/persistence/ABTPersistenceManager;

    move-result-object v0

    return-object v0
.end method
