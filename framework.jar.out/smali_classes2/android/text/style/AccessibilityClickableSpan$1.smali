.class final Landroid/text/style/AccessibilityClickableSpan$1;
.super Ljava/lang/Object;
.source "AccessibilityClickableSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/AccessibilityClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/text/style/AccessibilityClickableSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/text/style/AccessibilityClickableSpan;
    .locals 1

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityClickableSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/AccessibilityClickableSpan;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/text/style/AccessibilityClickableSpan;
    .locals 1

    new-array v0, p1, [Landroid/text/style/AccessibilityClickableSpan;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityClickableSpan$1;->newArray(I)[Landroid/text/style/AccessibilityClickableSpan;

    move-result-object v0

    return-object v0
.end method
