.class public Landroid/os/ShellCallback;
.super Ljava/lang/Object;
.source "ShellCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ShellCallback$1;,
        Landroid/os/ShellCallback$MyShellCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ShellCallback;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCallback"


# instance fields
.field final mLocal:Z

.field mShellCallback:Lcom/android/internal/os/IShellCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/ShellCallback$1;

    invoke-direct {v0}, Landroid/os/ShellCallback$1;-><init>()V

    sput-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ShellCallback;->mLocal:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ShellCallback;->mLocal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IShellCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IShellCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    return-void
.end method

.method public static writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOpenOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Landroid/os/ShellCallback;->mLocal:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/ShellCallback;->onOpenOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/os/IShellCallback;->openOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShellCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/ShellCallback$MyShellCallback;

    invoke-direct {v0, p0}, Landroid/os/ShellCallback$MyShellCallback;-><init>(Landroid/os/ShellCallback;)V

    iput-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCallback;->mShellCallback:Lcom/android/internal/os/IShellCallback;

    invoke-interface {v0}, Lcom/android/internal/os/IShellCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
