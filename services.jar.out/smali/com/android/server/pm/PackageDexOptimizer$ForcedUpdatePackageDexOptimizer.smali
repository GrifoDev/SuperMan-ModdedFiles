.class public Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForcedUpdatePackageDexOptimizer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    return-void
.end method


# virtual methods
.method protected adjustDexoptNeeded(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
