.class public Lcom/android/settings/search/SearchIndexableRaw;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableRaw.java"


# instance fields
.field public entries:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public menu_type:I

.field public parentTitleRes:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    return-void
.end method
