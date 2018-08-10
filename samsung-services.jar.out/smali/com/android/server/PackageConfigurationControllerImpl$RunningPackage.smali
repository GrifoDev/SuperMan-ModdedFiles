.class Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningPackage"
.end annotation


# instance fields
.field public mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDestroy:Z

.field public mWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PackageConfigurationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/PackageConfigurationControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->this$0:Lcom/android/server/PackageConfigurationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mShouldDestroy:Z

    return-void
.end method


# virtual methods
.method public allWindowsInitialized()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hasNoPids()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public hasNoWindows()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public hasWindow(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWindowInitialized(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public markForDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mShouldDestroy:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->putAllWindows(Z)V

    return-void
.end method

.method public putAllWindows(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mShouldDestroy:Z

    return v0
.end method
