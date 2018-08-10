.class Landroid/util/NtpData;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/util/NtpData;",
        ">;"
    }
.end annotation


# instance fields
.field score:I

.field serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    iput p2, p0, Landroid/util/NtpData;->score:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/util/NtpData;)I
    .locals 2

    invoke-virtual {p0}, Landroid/util/NtpData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/NtpData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/NtpData;

    invoke-virtual {p0, p1}, Landroid/util/NtpData;->compareTo(Landroid/util/NtpData;)I

    move-result v0

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Landroid/util/NtpData;->score:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/NtpData;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
