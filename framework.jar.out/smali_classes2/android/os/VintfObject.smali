.class public Landroid/os/VintfObject;
.super Ljava/lang/Object;
.source "VintfObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getHalNamesAndVersions()[Ljava/lang/String;
.end method

.method public static native getSepolicyVersion()Ljava/lang/String;
.end method

.method public static native getVndkSnapshots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native report()[Ljava/lang/String;
.end method

.method public static native verify([Ljava/lang/String;)I
.end method
