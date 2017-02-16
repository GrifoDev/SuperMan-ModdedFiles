.class public final Lcom/samsung/android/framework/res/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static decor_caption:I

.field public static decor_caption_desktop:I

.field public static desktop_mode_loading_screen:I

.field public static display_chooser_grid:I

.field public static display_chooser_list_item:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/high16 v0, 0x30000

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    .line 118
    const v0, 0x30001

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    .line 119
    const v0, 0x30002

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    .line 120
    const v0, 0x30003

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    .line 121
    const v0, 0x30004

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
