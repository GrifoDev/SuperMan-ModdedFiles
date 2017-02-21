.class public final Lcom/samsung/android/framework/res/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static config_DesktopModeDisplayDensity:I

.field public static config_DesktopModeDisplayHeight:I

.field public static config_DesktopModeDisplayWidth:I

.field public static config_dockedStackDividerSnapMode:I

.field public static multiwindow_freeform_max_count:I

.field public static mw_example_integer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x80005

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    const v0, 0x80004

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    const v0, 0x80003

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    const/high16 v0, 0x80000

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    const v0, 0x80002

    sput v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    const v0, 0x80001

    sput v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
