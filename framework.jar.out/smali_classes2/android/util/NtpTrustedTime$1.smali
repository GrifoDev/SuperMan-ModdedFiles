.class final Landroid/util/NtpTrustedTime$1;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/NtpData;",
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
.method public compare(Landroid/util/NtpData;Landroid/util/NtpData;)I
    .locals 2

    iget v0, p2, Landroid/util/NtpData;->score:I

    iget v1, p1, Landroid/util/NtpData;->score:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/NtpData;

    check-cast p2, Landroid/util/NtpData;

    invoke-virtual {p0, p1, p2}, Landroid/util/NtpTrustedTime$1;->compare(Landroid/util/NtpData;Landroid/util/NtpData;)I

    move-result v0

    return v0
.end method
