.class public Landroid/net/wifi/WifiScanner$ChannelSpec;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSpec"
.end annotation


# instance fields
.field public dwellTimeMS:I

.field public frequency:I

.field public passive:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    .line 136
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 137
    iput v0, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 134
    return-void
.end method
