.class public interface abstract annotation Lcom/android/systemui/Prefs$Key;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/StringDef;
    value = {
        "OverviewLastStackTaskActiveTime",
        "debugModeEnabled",
        "HotspotTileLastUsed",
        "ColorInversionTileLastUsed",
        "DndTileVisible",
        "DndTileCombinedIcon",
        "DndConfirmedPriorityIntroduction",
        "DndConfirmedSilenceIntroduction",
        "DndCountdownMinuteIndex",
        "DndNoneSelected",
        "DndFavoriteZen",
        "QsHotspotAdded",
        "QsDataSaverAdded",
        "QsDataSaverDialogShown",
        "QsInvertColorsAdded",
        "QsWorkAdded",
        "QsNightDisplayAdded",
        "FingerprintVersion",
        "CSCVersion",
        "SalesCode",
        "ServiceboxGuideNotificationShown",
        "QsPowerSavingCustomTileState",
        "QsMaxPowerSavingCustomTileState",
        "QsDolbyCustomTileState",
        "QsPerformanceCustomTileState",
        "QsSecureFolderCustomTileState",
        "QsPersonalModeCustomTileState",
        "QsNfcCustomTileState",
        "QsAodCustomTileState",
        "QsSmartViewCustomTileState",
        "QsDeviceVisibilityCustomTileState",
        "QsSyncCustomTileState",
        "QsEdgeLightingCustomTileState",
        "QsUDSCustomTileState",
        "QsSBikeCustomTileState",
        "NavigationBarForceImmersiveToastCount",
        "NavigationBarForceImmersiveState",
        "NavigationBarForceImmersiveConfirmation",
        "QsCustomTileList",
        "QsNewCustomTileList",
        "AssistanceAppSettingAlreadySelected"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Key"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
