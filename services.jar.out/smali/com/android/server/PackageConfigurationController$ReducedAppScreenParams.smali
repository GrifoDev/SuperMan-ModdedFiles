.class public Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReducedAppScreenParams"
.end annotation


# instance fields
.field public final offsetxPct:F

.field public final offsetyPct:F

.field public final scale:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    iput p2, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    iput p3, p0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    return-void
.end method
