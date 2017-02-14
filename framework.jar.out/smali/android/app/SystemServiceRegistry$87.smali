.class final Landroid/app/SystemServiceRegistry$87;
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
        "Landroid/content/pm/ShortcutManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/content/pm/ShortcutManager;
    .locals 1

    new-instance v0, Landroid/content/pm/ShortcutManager;

    invoke-direct {v0, p1}, Landroid/content/pm/ShortcutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$87;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    return-object v0
.end method
