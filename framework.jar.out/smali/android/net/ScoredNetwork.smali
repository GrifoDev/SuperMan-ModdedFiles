.class public Landroid/net/ScoredNetwork;
.super Ljava/lang/Object;
.source "ScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ScoredNetwork$1;
    }
.end annotation


# static fields
.field public static final ATTRIBUTES_KEY_BADGING_CURVE:Ljava/lang/String; = "android.net.attributes.key.BADGING_CURVE"

.field public static final ATTRIBUTES_KEY_HAS_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.attributes.key.HAS_CAPTIVE_PORTAL"

.field public static final ATTRIBUTES_KEY_RANKING_SCORE_OFFSET:Ljava/lang/String; = "android.net.attributes.key.RANKING_SCORE_OFFSET"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attributes:Landroid/os/Bundle;

.field public final meteredHint:Z

.field public final networkKey:Landroid/net/NetworkKey;

.field public final rssiCurve:Landroid/net/RssiCurve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/ScoredNetwork$1;

    invoke-direct {v0}, Landroid/net/ScoredNetwork$1;-><init>()V

    sput-object v0, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iput-object p2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iput-boolean p3, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    iput-object p4, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkKey;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RssiCurve;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/ScoredNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ScoredNetwork;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public calculateBadge(I)I
    .locals 3

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string/jumbo v2, "android.net.attributes.key.BADGING_CURVE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string/jumbo v2, "android.net.attributes.key.BADGING_CURVE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/RssiCurve;

    invoke-virtual {v0, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public calculateRankingScore(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/ScoredNetwork;->hasRankingScore()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Either rssiCurve or rankingScoreOffset is required to calculate the ranking score"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string/jumbo v4, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, 0x0

    :cond_1
    iget-object v3, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {v2, v1}, Ljava/lang/Math;->addExact(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :cond_2
    iget-object v3, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v3, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v3

    shl-int/lit8 v2, v3, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    if-gez v2, :cond_3

    const/high16 v3, -0x80000000

    :goto_1
    return v3

    :cond_3
    const v3, 0x7fffffff

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/ScoredNetwork;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/net/ScoredNetwork;

    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v3, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget-object v3, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public hasRankingScore()Z
    .locals 2

    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string/jumbo v1, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ScoredNetwork{networkKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rssiCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", meteredHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkKey;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v2, p1, p2}, Landroid/net/RssiCurve;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    if-eqz v2, :cond_1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
