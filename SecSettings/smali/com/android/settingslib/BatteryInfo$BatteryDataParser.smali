.class public interface abstract Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryDataParser"
.end annotation


# virtual methods
.method public abstract onDataGap()V
.end method

.method public abstract onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
.end method

.method public abstract onParsingDone()V
.end method

.method public abstract onParsingStarted(JJ)V
.end method
