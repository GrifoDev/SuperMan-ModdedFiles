.class public Lcom/android/settings/TetherService$UsageStatsManagerWrapper;
.super Ljava/lang/Object;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageStatsManagerWrapper"
.end annotation


# instance fields
.field private final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/TetherService$UsageStatsManagerWrapper;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-void
.end method


# virtual methods
.method setAppInactive(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherService$UsageStatsManagerWrapper;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    return-void
.end method
