.class public Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
.super Ljava/lang/Object;
.source "AppStateDataUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppStateDataUsageBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageState"
.end annotation


# instance fields
.field public isDataSaverBlacklisted:Z

.field public isDataSaverWhitelisted:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    iput-boolean p2, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    return-void
.end method
