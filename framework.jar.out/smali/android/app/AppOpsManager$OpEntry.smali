.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OpEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mLastAccessPackage:Ljava/lang/String;

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageName:Ljava/lang/String;

.field private final mProxyUid:I

.field private final mRejectTime:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mLastAccessPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    iput-object p10, p0, Landroid/app/AppOpsManager$OpEntry;->mLastAccessPackage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mLastAccessPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 4

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    goto :goto_0
.end method

.method public getLastAccessPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mLastAccessPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUid()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    return v0
.end method

.method public getRejectTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mLastAccessPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
