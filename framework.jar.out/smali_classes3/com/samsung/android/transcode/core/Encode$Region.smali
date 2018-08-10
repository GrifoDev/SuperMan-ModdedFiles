.class public Lcom/samsung/android/transcode/core/Encode$Region;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field regionAudioEndTime:I

.field regionEndTime:I

.field regionSpeed:I

.field regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

.field regionStartTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-void
.end method
