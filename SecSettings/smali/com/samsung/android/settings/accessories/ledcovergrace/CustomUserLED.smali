.class public Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;
.super Ljava/lang/Object;
.source "CustomUserLED.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;
    }
.end annotation


# instance fields
.field private mArrayName:Ljava/lang/String;

.field private mDotDataClass:[Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;

.field private mEnableDraw:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x99

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;->mDotDataClass:[Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;

    const-string/jumbo v1, "new"

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;->mArrayName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;->mEnableDraw:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;->mDotDataClass:[Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;

    new-instance v2, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;-><init>(Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
