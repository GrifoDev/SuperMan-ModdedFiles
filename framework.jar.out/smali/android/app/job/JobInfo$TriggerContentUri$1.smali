.class final Landroid/app/job/JobInfo$TriggerContentUri$1;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo$TriggerContentUri;
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
        "Landroid/app/job/JobInfo$TriggerContentUri;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 2

    new-instance v0, Landroid/app/job/JobInfo$TriggerContentUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$TriggerContentUri;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$TriggerContentUri$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    new-array v0, p1, [Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$TriggerContentUri$1;->newArray(I)[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    return-object v0
.end method
