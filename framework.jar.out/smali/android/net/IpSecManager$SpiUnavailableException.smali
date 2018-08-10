.class public final Landroid/net/IpSecManager$SpiUnavailableException;
.super Landroid/util/AndroidException;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpiUnavailableException"
.end annotation


# instance fields
.field private final mSpi:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(spi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/net/IpSecManager$SpiUnavailableException;->mSpi:I

    return-void
.end method


# virtual methods
.method public getSpi()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$SpiUnavailableException;->mSpi:I

    return v0
.end method
