.class public Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/splugins/SPluginManagerImpl;)Lcom/android/systemui/splugins/SPluginInstanceManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            ")",
            "Lcom/android/systemui/splugins/SPluginInstanceManager;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager;

    new-instance v1, Lcom/android/systemui/splugins/SVersionInfo;

    invoke-direct {v1}, Lcom/android/systemui/splugins/SVersionInfo;-><init>()V

    invoke-virtual {v1, p6}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;)V

    return-object v0
.end method
