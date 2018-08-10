.class public Lcom/android/settingslib/wifi/WifiTrackerFactory;
.super Ljava/lang/Object;
.source "WifiTrackerFactory.java"


# static fields
.field private static sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTestingWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method
