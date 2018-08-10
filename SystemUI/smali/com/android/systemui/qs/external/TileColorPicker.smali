.class public Lcom/android/systemui/qs/external/TileColorPicker;
.super Ljava/lang/Object;
.source "TileColorPicker.java"


# static fields
.field static final DISABLE_STATE_SET:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ENABLE_STATE_SET:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INACTIVE_STATE_SET:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/external/TileColorPicker;->DISABLE_STATE_SET:[I

    const v0, 0x101009e

    const v1, 0x10102fe

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/external/TileColorPicker;->ENABLE_STATE_SET:[I

    new-array v0, v3, [I

    const v1, -0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/external/TileColorPicker;->INACTIVE_STATE_SET:[I

    return-void
.end method
