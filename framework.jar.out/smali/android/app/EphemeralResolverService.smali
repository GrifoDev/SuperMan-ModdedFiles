.class public abstract Landroid/app/EphemeralResolverService;
.super Landroid/app/InstantAppResolverService;
.source "EphemeralResolverService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG_EPHEMERAL:Z

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/InstantAppResolverService;-><init>()V

    return-void
.end method


# virtual methods
.method _onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 5

    sget-boolean v2, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Legacy resolver; getInstantAppIntentFilter; prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/EphemeralResolverService;->onGetEphemeralIntentFilter(Ljava/lang/String;)Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/content/pm/EphemeralResolveInfo;->getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v1}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    return-void
.end method

.method _onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 7

    sget-boolean v4, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Legacy resolver; getInstantAppResolveInfo; prefix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/EphemeralResolverService;->onGetEphemeralResolveInfo([I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/EphemeralResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/EphemeralResolveInfo;->getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v3}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    invoke-super {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEphemeralResolveInfoList([II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onGetEphemeralIntentFilter(Ljava/lang/String;)Landroid/content/pm/EphemeralResolveInfo;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must define"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetEphemeralResolveInfo([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    const/16 v0, -0x1000

    invoke-virtual {p0, p1, v0}, Landroid/app/EphemeralResolverService;->onEphemeralResolveInfoList([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
