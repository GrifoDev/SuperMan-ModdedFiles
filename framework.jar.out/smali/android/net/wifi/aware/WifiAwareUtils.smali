.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "WifiAwareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateServiceName([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    array-length v2, p0

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    aget-byte v0, p0, v1

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_6

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_6

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_4

    const/16 v2, 0x7a

    if-le v0, v2, :cond_6

    :cond_4
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x5a

    if-le v0, v2, :cond_6

    :cond_5
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
