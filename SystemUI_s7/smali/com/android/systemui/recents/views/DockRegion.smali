.class Lcom/android/systemui/recents/views/DockRegion;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    sget-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
