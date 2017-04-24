.class Lcom/android/settings/DisplaySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/DisplaySettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/DisplaySettings$SummaryProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v1, 0x7f0b1ac5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0b1ac6

    goto :goto_1
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings$SummaryProvider;->updateSummary()V

    :cond_0
    return-void
.end method
