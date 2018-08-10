.class public interface abstract Landroid/companion/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final MEDIUM_TYPE_BLUETOOTH:I = 0x0

.field public static final MEDIUM_TYPE_BLUETOOTH_LE:I = 0x1

.field public static final MEDIUM_TYPE_WIFI:I = 0x2


# direct methods
.method public static matches(Landroid/companion/DeviceFilter;Landroid/os/Parcelable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/companion/DeviceFilter",
            "<TD;>;TD;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/companion/DeviceFilter;->matches(Landroid/os/Parcelable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMediumType()I
.end method

.method public abstract matches(Landroid/os/Parcelable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method
