.class public Landroid/content/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentSender$1;,
        Landroid/content/IntentSender$FinishedDispatcher;,
        Landroid/content/IntentSender$OnFinished;,
        Landroid/content/IntentSender$SendIntentException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;

.field mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/IntentSender$1;

    invoke-direct {v0}, Landroid/content/IntentSender$1;-><init>()V

    sput-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-void
.end method

.method public constructor <init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    iput-object p2, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-void
.end method

.method public static readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    :cond_0
    return-object v1
.end method

.method public static writeIntentSenderOrNullToParcel(Landroid/content/IntentSender;Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/content/IntentSender;

    iget-object v1, p1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCreatorUid()I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v4, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v3
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getWhitelistToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    iget-object v4, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    if-eqz p4, :cond_1

    new-instance v8, Landroid/content/IntentSender$FinishedDispatcher;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v8, p0, v0, v1}, Landroid/content/IntentSender$FinishedDispatcher;-><init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    :goto_1
    const/4 v10, 0x0

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v12

    if-gez v12, :cond_2

    new-instance v2, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v2}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v11

    new-instance v2, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v2}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v2

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "IntentSender{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
