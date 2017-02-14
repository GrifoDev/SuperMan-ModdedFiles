.class Lcom/android/settings/vpn2/AppVpnInfo;
.super Ljava/lang/Object;
.source "AppVpnInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    move-object v1, p1

    check-cast v1, Lcom/android/settings/vpn2/AppVpnInfo;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v2, v1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget v3, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    sub-int v0, v2, v3

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppVpnInfo;

    iget v2, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget v3, v0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
