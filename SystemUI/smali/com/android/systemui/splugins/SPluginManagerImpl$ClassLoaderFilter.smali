.class Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;
.super Ljava/lang/ClassLoader;
.source "SPluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassLoaderFilter"
.end annotation


# instance fields
.field private final mBase:Ljava/lang/ClassLoader;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "com.samsung.systemui.splugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.sdk.bixby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
