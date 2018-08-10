.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method
