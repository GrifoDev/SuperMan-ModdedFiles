.class public Lcom/android/systemui/recents/RecentsDebugFlags$Static;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsDebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field public static EnableAllListShown:Z

.field public static EnableAppList:Z

.field public static EnableCloseAllLayout:Z

.field public static EnableDesktopMode:Z

.field public static EnableDozeTrigger:Z

.field public static EnableFreeformInTaskStack:Z

.field public static EnableLowerAppbarHeight:Z

.field public static EnableMoreButton:Z

.field public static EnableMoreRound:Z

.field public static final EnableRecentsAppLock:Z

.field public static EnableSecondViewExpanded:Z

.field public static EnableSnapAction:Z

.field public static EnableSplitLayout:Z

.field public static EnableSpreadAnimation:Z

.field public static EnableTransParentBehindTaskView:Z

.field public static EnableVisibilityValueForTitleColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAllListShown:Z

    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableVisibilityValueForTitleColor:Z

    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_SupportRecentAppProtection"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
