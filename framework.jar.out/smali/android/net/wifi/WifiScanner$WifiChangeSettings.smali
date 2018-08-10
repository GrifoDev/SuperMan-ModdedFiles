.class public Landroid/net/wifi/WifiScanner$WifiChangeSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiChangeSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field public lostApSampleSize:I

.field public minApsBreachingThreshold:I

.field public periodInMs:I

.field public rssiSampleSize:I

.field public unchangedSampleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
