.class public interface abstract Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemWifiListener"
.end annotation


# virtual methods
.method public abstract onAccessPointsChanged(Z)V
.end method

.method public abstract onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
.end method

.method public abstract onScanStateChange(I)V
.end method
