.class public final Lcom/samsung/android/framework/res/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static config_dualscreen_opposite_launch_app_list:I

.field public static config_dualscreen_samsung_home_app_list:I

.field public static config_multiInstanceSupportAppList:I

.field public static config_multiWindowSupportAppList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x70000

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    .line 26
    const v0, 0x70001

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    .line 27
    const v0, 0x70002

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    .line 28
    const v0, 0x70003

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
