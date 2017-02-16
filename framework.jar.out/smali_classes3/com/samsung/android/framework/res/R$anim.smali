.class public final Lcom/samsung/android/framework/res/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static app_starting_exit_for_delaying:I

.field public static dualscreen_task_to_bottom:I

.field public static dualscreen_task_to_left:I

.field public static dualscreen_task_to_right:I

.field public static dualscreen_task_to_top:I

.field public static example_anim:I

.field public static multiwindow_docked_resize:I

.field public static multiwindow_freeze_default:I

.field public static multiwindow_minimize:I

.field public static multiwindow_task_close_exit:I

.field public static multiwindow_unminimize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x40000

    sput v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    .line 13
    const v0, 0x40001

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    .line 14
    const v0, 0x40002

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    .line 15
    const v0, 0x40003

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    .line 16
    const v0, 0x40004

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    .line 17
    const v0, 0x40005

    sput v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    .line 18
    const v0, 0x40006

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    .line 19
    const v0, 0x40007

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    .line 20
    const v0, 0x40008

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    .line 21
    const v0, 0x40009

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    .line 22
    const v0, 0x4000a

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
