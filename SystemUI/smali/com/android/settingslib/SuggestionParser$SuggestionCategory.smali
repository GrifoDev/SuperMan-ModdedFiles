.class Lcom/android/settingslib/SuggestionParser$SuggestionCategory;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/SuggestionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuggestionCategory"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public multiple:Z

.field public pkg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
