.class public Landroid/net/IpSecConfig$Flow;
.super Ljava/lang/Object;
.source "IpSecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flow"
.end annotation


# instance fields
.field authentication:Landroid/net/IpSecAlgorithm;

.field encryption:Landroid/net/IpSecAlgorithm;

.field spi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
