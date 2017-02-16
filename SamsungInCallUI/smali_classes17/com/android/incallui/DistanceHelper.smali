.class public abstract Lcom/android/incallui/DistanceHelper;
.super Ljava/lang/Object;
.source "DistanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DistanceHelper$Listener;
    }
.end annotation


# static fields
.field public static final DISTANCE_NOT_FOUND:F = -1.0f

.field public static final KILOMETERS_PER_METER:F = 0.001f

.field public static final MILES_PER_METER:F = 6.213712E-4f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public calculateDistance(Landroid/location/Address;)F
    .locals 1
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 38
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
